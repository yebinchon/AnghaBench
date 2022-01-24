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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct hda_softc {int /*<<< orphan*/ * dma_pib_vaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int HDAC_DPIBUBASE ; 
 int HDAC_DPLBASE_DPLBASE_DMAPBE ; 
 int HDAC_DPLBASE_DPLBASE_MASK ; 
 int HDA_DMA_PIB_ENTRY_LEN ; 
 int HDA_IOSS_NO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct hda_softc*,int,int) ; 
 int FUNC3 (struct hda_softc*,int) ; 

__attribute__((used)) static void
FUNC4(struct hda_softc *sc, uint32_t offset, uint32_t old)
{
	uint32_t value = FUNC3(sc, offset);
	uint64_t dpiblbase = 0;
	uint64_t dpibubase = 0;
	uint64_t dpibpaddr = 0;

	if ((value & HDAC_DPLBASE_DPLBASE_DMAPBE) != (old &		\
				HDAC_DPLBASE_DPLBASE_DMAPBE)) {
		if (value & HDAC_DPLBASE_DPLBASE_DMAPBE) {
			dpiblbase = value & HDAC_DPLBASE_DPLBASE_MASK;
			dpibubase = FUNC3(sc, HDAC_DPIBUBASE);

			dpibpaddr = dpiblbase | (dpibubase << 32);
			FUNC0("DMA Position In Buffer dma_paddr: %p\n",
			    (void *)dpibpaddr);

			sc->dma_pib_vaddr = FUNC2(sc, dpibpaddr,
					HDA_DMA_PIB_ENTRY_LEN * HDA_IOSS_NO);
			if (!sc->dma_pib_vaddr) {
				FUNC0("Fail to get the guest \
					 virtual address\n");
				FUNC1(0);
			}
		} else {
			FUNC0("DMA Position In Buffer Reset\n");
			sc->dma_pib_vaddr = NULL;
		}
	}
}