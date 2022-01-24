#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tdfx_softc {int type; int addr0; int memrid; int addr1; int memrid2; int pio0; int pio0max; int piorid; TYPE_1__* devt; int /*<<< orphan*/ * piorange; int /*<<< orphan*/ * memrange2; int /*<<< orphan*/ * memrange; int /*<<< orphan*/ * curFile; int /*<<< orphan*/  dv; int /*<<< orphan*/  bus; int /*<<< orphan*/  vendor; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {struct tdfx_softc* si_drv1; } ;

/* Variables and functions */
 int /*<<< orphan*/  GID_WHEEL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int PCIR_IOBASE0_2 ; 
 int PCI_DEVICE_3DFX_BANSHEE ; 
 int PCI_DEVICE_3DFX_VOODOO3 ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  UID_ROOT ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 struct tdfx_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tdfx_cdev ; 
 int /*<<< orphan*/  tdfx_count ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(device_t dev) { 
	/*
	 * The attach routine is called after the probe routine successfully says it
	 * supports a given card. We now proceed to initialize this card for use with
	 * the system. I want to map the device memory for userland allocation and
	 * fill an information structure with information on this card. I'd also like
	 * to set Write Combining with the MTRR code so that we can hopefully speed
	 * up memory writes. The last thing is to register the character device
	 * interface to the card, so we can open it from /dev/3dfxN, where N is a
	 * small, whole number.
	 */
	struct tdfx_softc *tdfx_info;
	/* rid value tells bus_alloc_resource where to find the addresses of ports or
	 * of memory ranges in the PCI config space*/
	int rid = FUNC0(0);

	/* Increment the card counter (for the ioctl code) */
	tdfx_count++;

	/* Fill the soft config struct with info about this device*/
	tdfx_info = FUNC2(dev);
	tdfx_info->dev = dev;
	tdfx_info->vendor = FUNC9(dev);
	tdfx_info->type = FUNC7(dev) >> 16;
	tdfx_info->bus = FUNC6(dev);
	tdfx_info->dv = FUNC8(dev);
	tdfx_info->curFile = NULL;

	/* 
	 *	Get the Memory Location from the PCI Config, mask out lower word, since
	 * the config space register is only one word long (this is nicer than a
	 * bitshift).
	 */
	tdfx_info->addr0 = (FUNC10(dev, 0x10, 4) & 0xffff0000);
#ifdef DEBUG
	device_printf(dev, "Base0 @ 0x%x\n", tdfx_info->addr0);
#endif
	/* Notify the VM that we will be mapping some memory later */
	tdfx_info->memrange = FUNC1(dev, SYS_RES_MEMORY,
		&rid, RF_ACTIVE | RF_SHAREABLE);
	if(tdfx_info->memrange == NULL) {
#ifdef DEBUG
		device_printf(dev, "Error mapping mem, won't be able to use mmap()\n");
#endif
		tdfx_info->memrid = 0;
	}
	else {
		tdfx_info->memrid = rid;
#ifdef DEBUG
		device_printf(dev, "Mapped to: 0x%x\n", 
				(unsigned int)rman_get_start(tdfx_info->memrange));
#endif
	}

	/* Setup for Voodoo3 and Banshee, PIO and an extram Memrange */
	if(FUNC7(dev) == PCI_DEVICE_3DFX_VOODOO3 ||
		FUNC7(dev) == PCI_DEVICE_3DFX_BANSHEE) {
		rid = 0x14;	/* 2nd mem map */
		tdfx_info->addr1 = (FUNC10(dev, 0x14, 4) & 0xffff0000);
#ifdef DEBUG
		device_printf(dev, "Base1 @ 0x%x\n", tdfx_info->addr1);
#endif
		tdfx_info->memrange2 = FUNC1(dev,
			SYS_RES_MEMORY, &rid, RF_ACTIVE | RF_SHAREABLE);
		if(tdfx_info->memrange2 == NULL) {
#ifdef DEBUG
			device_printf(dev, "Mem1 couldn't be allocated, glide may not work.");
#endif
			tdfx_info->memrid2 = 0;
		}
		else {
			tdfx_info->memrid2 = rid;
		}
		/* Now to map the PIO stuff */
		rid = PCIR_IOBASE0_2;
		tdfx_info->pio0 = FUNC10(dev, 0x2c, 2);
		tdfx_info->pio0max = FUNC10(dev, 0x30, 2) + tdfx_info->pio0;
		tdfx_info->piorange = FUNC1(dev,
			SYS_RES_IOPORT, &rid, RF_ACTIVE | RF_SHAREABLE);
		if(tdfx_info->piorange == NULL) {
#ifdef DEBUG
			device_printf(dev, "Couldn't map PIO range.");
#endif
			tdfx_info->piorid = 0;
		}
		else {
			tdfx_info->piorid = rid;
		}
	} else {
	  tdfx_info->addr1 = 0;
	  tdfx_info->memrange2 = NULL;
	  tdfx_info->piorange = NULL;
	}

	/* 
	 *	Set Writecombining, or at least Uncacheable for the memory region, if we
	 * are able to
	 */

	if(FUNC12(dev) != 0) {
#ifdef DEBUG
		device_printf(dev, "Some weird error setting MTRRs");
#endif
		return -1;
	}

	/* 
	 * make_dev registers the cdev to access the 3dfx card from /dev
	 *	use hex here for the dev num, simply to provide better support if > 10
	 * voodoo cards, for the mad. The user must set the link.
	 * Why would we want that many voodoo cards anyhow? 
	 */
	tdfx_info->devt = FUNC5(&tdfx_cdev, FUNC3(dev),
		UID_ROOT, GID_WHEEL, 0600, "3dfx%x", FUNC3(dev));
	tdfx_info->devt->si_drv1 = tdfx_info;
	
	return 0;
}