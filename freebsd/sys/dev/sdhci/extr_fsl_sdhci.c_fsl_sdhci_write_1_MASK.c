#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct sdhci_slot {int dummy; } ;
struct fsl_sdhci_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int bus_size_t ;

/* Variables and functions */
 int FUNC0 (struct fsl_sdhci_softc*,int) ; 
 int SDHCI_CTRL_4BITBUS ; 
 int SDHCI_CTRL_8BITBUS ; 
 int SDHCI_CTRL_ADMA2 ; 
 int SDHCI_CTRL_CARD_DET ; 
 int SDHCI_CTRL_FORCE_CARD ; 
 int SDHCI_CTRL_LED ; 
 int SDHCI_CTRL_SDMA ; 
 int SDHCI_HOST_CONTROL ; 
 int SDHCI_POWER_CONTROL ; 
 int SDHCI_SOFTWARE_RESET ; 
 int SDHC_PROT_CDSS ; 
 int SDHC_PROT_CDTL ; 
 int SDHC_PROT_CTRL ; 
 int SDHC_PROT_DMA_MASK ; 
 int SDHC_PROT_LED ; 
 int SDHC_PROT_WIDTH_8BIT ; 
 int SDHC_PROT_WIDTH_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct fsl_sdhci_softc*,int,int) ; 
 struct fsl_sdhci_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(device_t dev, struct sdhci_slot *slot, bus_size_t off, uint8_t val)
{
	struct fsl_sdhci_softc *sc = FUNC2(dev);
	uint32_t val32;

	/*
	 * Most of the things in the standard host control register are in the
	 * hardware's wider protocol control register, but some of the bits are
	 * moved around.
	 */
	if (off == SDHCI_HOST_CONTROL) {
		val32 = FUNC0(sc, SDHC_PROT_CTRL);
		val32 &= ~(SDHC_PROT_LED | SDHC_PROT_DMA_MASK |
		    SDHC_PROT_WIDTH_MASK | SDHC_PROT_CDTL | SDHC_PROT_CDSS);
		val32 |= (val & SDHCI_CTRL_LED);
		if (val & SDHCI_CTRL_8BITBUS)
			val32 |= SDHC_PROT_WIDTH_8BIT;
		else
			val32 |= (val & SDHCI_CTRL_4BITBUS);
		val32 |= (val & (SDHCI_CTRL_SDMA | SDHCI_CTRL_ADMA2)) << 4;
		val32 |= (val & (SDHCI_CTRL_CARD_DET | SDHCI_CTRL_FORCE_CARD));
		FUNC1(sc, SDHC_PROT_CTRL, val32);
		return;
	}

	/* XXX I can't find the bus power on/off knob; do nothing. */
	if (off == SDHCI_POWER_CONTROL) {
		return;
	}
#ifdef __powerpc__
	/* XXX Reset doesn't seem to work as expected.  Do nothing for now. */
	if (off == SDHCI_SOFTWARE_RESET)
		return;
#endif

	val32 = FUNC0(sc, off & ~3);
	val32 &= ~(0xff << (off & 3) * 8);
	val32 |= (val << (off & 3) * 8);

	FUNC1(sc, off & ~3, val32);
}