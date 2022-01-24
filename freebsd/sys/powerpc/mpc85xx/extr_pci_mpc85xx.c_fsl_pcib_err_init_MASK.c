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
typedef  int uint32_t ;
typedef  void* uint16_t ;
struct fsl_pcib_softc {scalar_t__ sc_pcie_capreg; int /*<<< orphan*/  sc_bsh; int /*<<< orphan*/  sc_bst; scalar_t__ sc_pcie; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int PCIEM_CTL_FER_ENABLE ; 
 int PCIEM_CTL_NFER_ENABLE ; 
 int PCIEM_CTL_URR_ENABLE ; 
 scalar_t__ PCIER_DEVICE_CTL ; 
 scalar_t__ PCIER_DEVICE_STA ; 
 scalar_t__ PCIR_SECSTAT_1 ; 
 int /*<<< orphan*/  REG_PEX_ERR_DR ; 
 int /*<<< orphan*/  REG_PEX_ERR_EN ; 
 int /*<<< orphan*/  REG_PEX_MES_DR ; 
 int /*<<< orphan*/  REG_PEX_MES_IER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct fsl_pcib_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct fsl_pcib_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fsl_pcib_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int) ; 

__attribute__((used)) static void
FUNC4(device_t dev)
{
	struct fsl_pcib_softc *sc;
	uint16_t sec_stat, dsr;
	uint32_t dcr, err_en;

	sc = FUNC1(dev);

	sec_stat = FUNC2(sc, 0, 0, 0, PCIR_SECSTAT_1, 2);
	if (sec_stat)
		FUNC3(sc, 0, 0, 0, PCIR_SECSTAT_1, 0xffff, 2);
	if (sc->sc_pcie) {
		/* Clear error bits */
		FUNC0(sc->sc_bst, sc->sc_bsh, REG_PEX_MES_IER,
		    0xffffffff);
		FUNC0(sc->sc_bst, sc->sc_bsh, REG_PEX_MES_DR,
		    0xffffffff);
		FUNC0(sc->sc_bst, sc->sc_bsh, REG_PEX_ERR_DR,
		    0xffffffff);

		dsr = FUNC2(sc, 0, 0, 0,
		    sc->sc_pcie_capreg + PCIER_DEVICE_STA, 2);
		if (dsr)
			FUNC3(sc, 0, 0, 0,
			    sc->sc_pcie_capreg + PCIER_DEVICE_STA,
			    0xffff, 2);

		/* Enable all errors reporting */
		err_en = 0x00bfff00;
		FUNC0(sc->sc_bst, sc->sc_bsh, REG_PEX_ERR_EN,
		    err_en);

		/* Enable error reporting: URR, FER, NFER */
		dcr = FUNC2(sc, 0, 0, 0,
		    sc->sc_pcie_capreg + PCIER_DEVICE_CTL, 4);
		dcr |= PCIEM_CTL_URR_ENABLE | PCIEM_CTL_FER_ENABLE |
		    PCIEM_CTL_NFER_ENABLE;
		FUNC3(sc, 0, 0, 0,
		    sc->sc_pcie_capreg + PCIER_DEVICE_CTL, dcr, 4);
	}
}