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
typedef  int uint16_t ;
struct pci_devinfo {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int,int,int,int) ; 
 int PCIM_HDRTYPE ; 
 int PCIM_MFDEV ; 
 int /*<<< orphan*/  PCIR_DEVICE ; 
 int /*<<< orphan*/  PCIR_HDRTYPE ; 
#define  PCI_DEVICE_ID_NLM_EHCI 135 
#define  PCI_DEVICE_ID_NLM_FMN 134 
#define  PCI_DEVICE_ID_NLM_I2C 133 
#define  PCI_DEVICE_ID_NLM_ICI 132 
#define  PCI_DEVICE_ID_NLM_MMC 131 
#define  PCI_DEVICE_ID_NLM_NOR 130 
#define  PCI_DEVICE_ID_NLM_PIC 129 
#define  PCI_DEVICE_ID_NLM_UART 128 
 int PCI_FUNCMAX ; 
 int PCI_MAXHDRTYPE ; 
 int FUNC3 (int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int,int) ; 
 int XLP_PCI_DEVSCRATCH_REG0 ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct pci_devinfo*) ; 
 struct pci_devinfo* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct pci_devinfo *dinfo;
	device_t pcib;
	int maxslots, s, f, pcifunchigh, irq;
	int busno, node, devoffset;
	uint16_t devid;
	uint8_t hdrtype;

	/*
	 * The on-chip devices are on a bus that is almost, but not
	 * quite, completely like PCI. Add those things by hand.
	 */
	pcib = FUNC6(dev);
	busno = FUNC10(dev);
	maxslots = FUNC0(pcib);
	for (s = 0; s <= maxslots; s++) {
		pcifunchigh = 0;
		f = 0;
		hdrtype = FUNC1(pcib, busno, s, f, PCIR_HDRTYPE, 1);
		if ((hdrtype & PCIM_HDRTYPE) > PCI_MAXHDRTYPE)
			continue;
		if (hdrtype & PCIM_MFDEV)
			pcifunchigh = PCI_FUNCMAX;
		node = s / 8;
		for (f = 0; f <= pcifunchigh; f++) {
			devoffset = FUNC4(node, 0, s % 8, f);
			if (!FUNC7(devoffset))
				continue;

			/* Find if there is a desc for the SoC device */
			devid = FUNC1(pcib, busno, s, f, PCIR_DEVICE, 2);

			/* Skip devices that don't have a proper PCI header */
			switch (devid) {
			case PCI_DEVICE_ID_NLM_ICI:
			case PCI_DEVICE_ID_NLM_PIC:
			case PCI_DEVICE_ID_NLM_FMN:
			case PCI_DEVICE_ID_NLM_UART:
			case PCI_DEVICE_ID_NLM_I2C:
			case PCI_DEVICE_ID_NLM_NOR:
			case PCI_DEVICE_ID_NLM_MMC:
				continue;
			case PCI_DEVICE_ID_NLM_EHCI:
				irq = FUNC3(f);
				FUNC2(pcib, busno, s, f,
				    XLP_PCI_DEVSCRATCH_REG0 << 2,
				    (1 << 8) | irq, 4);
			}
			dinfo = FUNC9(pcib, dev, FUNC11(dev),
			    busno, s, f);
			FUNC8(dev, dinfo);
		}
	}
	return (FUNC5(dev));
}