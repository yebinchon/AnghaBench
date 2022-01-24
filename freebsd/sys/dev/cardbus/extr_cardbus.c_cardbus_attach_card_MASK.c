#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pci_devinfo {int dummy; } ;
struct cardbus_softc {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/ * dev; scalar_t__ mfdev; } ;
struct TYPE_5__ {TYPE_4__ cfg; int /*<<< orphan*/  resources; } ;
struct cardbus_devinfo {TYPE_1__ pci; int /*<<< orphan*/  mprefetchable; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOENT ; 
 int /*<<< orphan*/  Giant ; 
 int PCI_FUNCMAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct cardbus_softc*,struct cardbus_devinfo*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 struct cardbus_softc* FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct cardbus_devinfo*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_devinfo*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int) ; 
 int FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC23(device_t cbdev)
{
	device_t brdev = FUNC8(cbdev);
	device_t child;
	int bus, domain, slot, func;
	int cardattached = 0;
	int cardbusfunchigh = 0;
	struct cardbus_softc *sc;

	sc = FUNC9(cbdev);
	FUNC3(cbdev); /* detach existing cards */
	FUNC1(brdev, cbdev); /* Turn the socket off first */
	FUNC2(brdev, cbdev);
	domain = FUNC21(cbdev);
	bus = FUNC20(cbdev);
	slot = 0;
	FUNC12(&Giant);
	/* For each function, set it up and try to attach a driver to it */
	for (func = 0; func <= cardbusfunchigh; func++) {
		struct cardbus_devinfo *dinfo;

		dinfo = (struct cardbus_devinfo *)
		    FUNC19(brdev, cbdev, domain, bus, slot, func);
		if (dinfo == NULL)
			continue;
		if (dinfo->pci.cfg.mfdev)
			cardbusfunchigh = PCI_FUNCMAX;

		child = FUNC7(cbdev, NULL, -1);
		if (child == NULL) {
			FUNC0((cbdev, "Cannot add child!\n"));
			FUNC17((struct pci_devinfo *)dinfo);
			continue;
		}
		dinfo->pci.cfg.dev = child;
		FUNC22(&dinfo->pci.resources);
		FUNC11(child, dinfo);
		FUNC4(sc, dinfo, cbdev, child);
		if (FUNC6(cbdev, child) != 0)
			FUNC0((cbdev, "Warning: Bogus CIS ignored\n"));
		FUNC16(dinfo->pci.cfg.dev, &dinfo->pci, 0);
		FUNC15(dinfo->pci.cfg.dev, &dinfo->pci);
		FUNC5(&dinfo->pci.cfg);
		FUNC14(cbdev, child, 1, dinfo->mprefetchable);
		FUNC18(&dinfo->pci);
		if (FUNC10(child) == 0)
			cardattached++;
		else
			FUNC16(dinfo->pci.cfg.dev, &dinfo->pci, 1);
	}
	FUNC13(&Giant);
	if (cardattached > 0)
		return (0);
/*	POWER_DISABLE_SOCKET(brdev, cbdev); */
	return (ENOENT);
}