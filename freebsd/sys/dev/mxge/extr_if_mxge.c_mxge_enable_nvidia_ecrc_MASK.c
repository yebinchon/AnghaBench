#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct TYPE_3__ {int /*<<< orphan*/ * dev; } ;
typedef  TYPE_1__ mxge_softc_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,uintptr_t*) ; 
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int PCIR_DEVICE ; 
 int PCIR_VENDOR ; 
 int /*<<< orphan*/  PCI_IVAR_BUS ; 
 int /*<<< orphan*/  PCI_IVAR_DEVICE ; 
 int /*<<< orphan*/  PCI_IVAR_FUNCTION ; 
 int /*<<< orphan*/  PCI_IVAR_SLOT ; 
 int /*<<< orphan*/  PCI_IVAR_VENDOR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  mxge_nvidia_ecrc_enable ; 
 scalar_t__ mxge_verbose ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int,int) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(mxge_softc_t *sc)
{
	uint32_t val;
	unsigned long base, off;
	char *va, *cfgptr;
	device_t pdev, mcp55;
	uint16_t vendor_id, device_id, word;
	uintptr_t bus, slot, func, ivend, idev;
	uint32_t *ptr32;


	if (!mxge_nvidia_ecrc_enable)
		return;

	pdev = FUNC1(FUNC1(sc->dev));
	if (pdev == NULL) {
		FUNC2(sc->dev, "could not find parent?\n");
		return;
	}
	vendor_id = FUNC4(pdev, PCIR_VENDOR, 2);
	device_id = FUNC4(pdev, PCIR_DEVICE, 2);

	if (vendor_id != 0x10de)
		return;

	base = 0;

	if (device_id == 0x005d) {
		/* ck804, base address is magic */
		base = 0xe0000000UL;
	} else if (device_id >= 0x0374 && device_id <= 0x378) {
		/* mcp55, base address stored in chipset */
		mcp55 = FUNC3(0, 0, 0);
		if (mcp55 &&
		    0x10de == FUNC4(mcp55, PCIR_VENDOR, 2) &&
		    0x0369 == FUNC4(mcp55, PCIR_DEVICE, 2)) {
			word = FUNC4(mcp55, 0x90, 2);
			base = ((unsigned long)word & 0x7ffeU) << 25;
		}
	}
	if (!base)
		return;

	/* XXXX
	   Test below is commented because it is believed that doing
	   config read/write beyond 0xff will access the config space
	   for the next larger function.  Uncomment this and remove
	   the hacky pmap_mapdev() way of accessing config space when
	   FreeBSD grows support for extended pcie config space access
	*/
#if 0	
	/* See if we can, by some miracle, access the extended
	   config space */
	val = pci_read_config(pdev, 0x178, 4);
	if (val != 0xffffffff) {
		val |= 0x40;
		pci_write_config(pdev, 0x178, val, 4);
		return;
	}
#endif
	/* Rather than using normal pci config space writes, we must
	 * map the Nvidia config space ourselves.  This is because on
	 * opteron/nvidia class machine the 0xe000000 mapping is
	 * handled by the nvidia chipset, that means the internal PCI
	 * device (the on-chip northbridge), or the amd-8131 bridge
	 * and things behind them are not visible by this method.
	 */

	FUNC0(FUNC1(pdev), pdev,
		      PCI_IVAR_BUS, &bus);
	FUNC0(FUNC1(pdev), pdev,
		      PCI_IVAR_SLOT, &slot);
	FUNC0(FUNC1(pdev), pdev,
		      PCI_IVAR_FUNCTION, &func);
	FUNC0(FUNC1(pdev), pdev,
		      PCI_IVAR_VENDOR, &ivend);
	FUNC0(FUNC1(pdev), pdev,
		      PCI_IVAR_DEVICE, &idev);
					
	off =  base
		+ 0x00100000UL * (unsigned long)bus
		+ 0x00001000UL * (unsigned long)(func
						 + 8 * slot);

	/* map it into the kernel */
	va = FUNC6(FUNC8((vm_paddr_t)off), PAGE_SIZE);
	

	if (va == NULL) {
		FUNC2(sc->dev, "pmap_kenter_temporary didn't\n");
		return;
	}
	/* get a pointer to the config space mapped into the kernel */
	cfgptr = va + (off & PAGE_MASK);

	/* make sure that we can really access it */
	vendor_id = *(uint16_t *)(cfgptr + PCIR_VENDOR);
	device_id = *(uint16_t *)(cfgptr + PCIR_DEVICE);
	if (! (vendor_id == ivend && device_id == idev)) {
		FUNC2(sc->dev, "mapping failed: 0x%x:0x%x\n",
			      vendor_id, device_id);
		FUNC7((vm_offset_t)va, PAGE_SIZE);
		return;
	}

	ptr32 = (uint32_t*)(cfgptr + 0x178);
	val = *ptr32;

	if (val == 0xffffffff) {
		FUNC2(sc->dev, "extended mapping failed\n");
		FUNC7((vm_offset_t)va, PAGE_SIZE);
		return;
	}
	*ptr32 = val | 0x40;
	FUNC7((vm_offset_t)va, PAGE_SIZE);
	if (mxge_verbose)
		FUNC2(sc->dev,
			      "Enabled ECRC on upstream Nvidia bridge "
			      "at %d:%d:%d\n",
			      (int)bus, (int)slot, (int)func);
	return;
}