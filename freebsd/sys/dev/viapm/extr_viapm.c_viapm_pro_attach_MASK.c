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
typedef  int u_int32_t ;
struct viapm_softc {int /*<<< orphan*/  lock; scalar_t__ irqres; scalar_t__ irqrid; scalar_t__ iores; scalar_t__ iorid; int /*<<< orphan*/  smbus; int /*<<< orphan*/  irqih; } ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  MTX_DEF ; 
 scalar_t__ PCIC_BRIDGE ; 
 scalar_t__ PCIS_BRIDGE_ISA ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SMBHCTRL ; 
 int SMBHCTRL_ENABLE ; 
 int /*<<< orphan*/  SMBSCTRL ; 
 int SMBSCTRL_ENABLE ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  VIAPM_PRO_REVID ; 
 int /*<<< orphan*/  VIAPM_PRO_SMBCTRL ; 
 scalar_t__ bootverbose ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int,int,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *,struct viapm_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ viasmb_intr ; 

__attribute__((used)) static int
FUNC18(device_t dev)
{
	struct viapm_softc *viapm = (struct viapm_softc *)FUNC9(dev);
	u_int32_t l;

	FUNC13(&viapm->lock, FUNC8(dev), "viapm", MTX_DEF);
	if (!(viapm->iores = FUNC3(dev, SYS_RES_IOPORT,
		&viapm->iorid, RF_ACTIVE))) {
		FUNC10(dev, "could not allocate bus space\n");
		goto error;
	}

#ifdef notyet
	/* force irq 9 */
	l = pci_read_config(dev, VIAPM_PRO_SMBCTRL, 1);
	pci_write_config(dev, VIAPM_PRO_SMBCTRL, l | 0x80, 1);

	viapm->irqrid = 0;
	if (!(viapm->irqres = bus_alloc_resource(dev, SYS_RES_IRQ,
				&viapm->irqrid, 9, 9, 1,
				RF_SHAREABLE | RF_ACTIVE))) {
		device_printf(dev, "could not allocate irq\n");
		goto error;
	}

	if (bus_setup_intr(dev, viapm->irqres, INTR_TYPE_MISC | INTR_MPSAFE,
			(driver_intr_t *) viasmb_intr, viapm, &viapm->irqih)) {
		device_printf(dev, "could not setup irq\n");
		goto error;
	}
#endif

	if (bootverbose) {
		l = FUNC16(dev, VIAPM_PRO_REVID, 1);
		FUNC10(dev, "SMBus revision code 0x%x\n", l);
	}

	viapm->smbus = FUNC7(dev, "smbus", -1);

	/* probe and attach the smbus */
	FUNC4(dev);

	/* disable slave function */
	FUNC1(SMBSCTRL, FUNC0(SMBSCTRL) & ~SMBSCTRL_ENABLE);

	/* enable the SMBus controller function */
	l = FUNC16(dev, VIAPM_PRO_SMBCTRL, 1);
	FUNC17(dev, VIAPM_PRO_SMBCTRL, l | 1, 1);

#ifdef notyet
	/* enable interrupts */
	VIAPM_OUTB(SMBHCTRL, VIAPM_INB(SMBHCTRL) | SMBHCTRL_ENABLE);
#endif

#ifdef DEV_ISA
	/* If this device is a PCI-ISA bridge, then attach an ISA bus. */
	if ((pci_get_class(dev) == PCIC_BRIDGE) &&
	    (pci_get_subclass(dev) == PCIS_BRIDGE_ISA))
		isab_attach(dev);
#endif
	return 0;

error:
	if (viapm->iores)
		FUNC5(dev, SYS_RES_IOPORT, viapm->iorid, viapm->iores);
#ifdef notyet
	if (viapm->irqres)
		bus_release_resource(dev, SYS_RES_IRQ, viapm->irqrid, viapm->irqres);
#endif
	FUNC12(&viapm->lock);

	return ENXIO;
}