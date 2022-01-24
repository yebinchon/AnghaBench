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
struct vmd_softc {int /*<<< orphan*/  vmd_io_resource; int /*<<< orphan*/ * vmd_regs_resource; } ;
struct pci_devinfo {int /*<<< orphan*/  resources; } ;
typedef  scalar_t__ rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ PCI_DOMAINMAX ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct vmd_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct pci_devinfo*) ; 
 struct pci_devinfo* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct vmd_softc *sc;
	struct pci_devinfo *dinfo;
	rman_res_t start, end;
	int b, s, f;

	sc = FUNC2(FUNC1(dev));

	/* Start at max PCI vmd_domain and work down */
	b = s = f = 0;
	dinfo = FUNC6(FUNC1(dev), dev,
	     PCI_DOMAINMAX - FUNC3(FUNC1(dev)),
	     b, s, f);
	if (dinfo == NULL) {
		FUNC4(dev, "Cannot allocate dinfo!\n");
		return (ENOENT);
	}

	FUNC5(dev, dinfo);

	start = FUNC9(sc->vmd_regs_resource[1]);
	end = FUNC8(sc->vmd_regs_resource[1]);
	FUNC7(&dinfo->resources, SYS_RES_MEMORY, start, end,
	    end - start + 1);

	start = FUNC9(sc->vmd_io_resource);
	end = FUNC8(sc->vmd_io_resource);
	FUNC7(&dinfo->resources, SYS_RES_IOPORT, start, end,
	    end - start + 1);
 
	FUNC0(dev);

	return (0);
}