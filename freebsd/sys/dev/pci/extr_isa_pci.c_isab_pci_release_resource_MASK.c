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
struct resource {int dummy; } ;
struct isab_pci_softc {TYPE_1__* isab_pci_res; } ;
typedef  scalar_t__ device_t ;
struct TYPE_2__ {int ip_refs; struct resource* ip_res; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,scalar_t__,int,int,struct resource*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int PCIR_MAX_BAR_0 ; 
 int FUNC2 (int) ; 
#define  SYS_RES_IOPORT 129 
#define  SYS_RES_MEMORY 128 
 int FUNC3 (scalar_t__,scalar_t__,int,int,struct resource*) ; 
 int FUNC4 (scalar_t__,int,int,struct resource*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 struct isab_pci_softc* FUNC6 (scalar_t__) ; 

__attribute__((used)) static int
FUNC7(device_t dev, device_t child, int type, int rid,
    struct resource *r)
{
	struct isab_pci_softc *sc;
	int bar, error;

	if (FUNC5(child) != dev)
		return FUNC3(dev, child, type, rid, r);

	switch (type) {
	case SYS_RES_MEMORY:
	case SYS_RES_IOPORT:
		/*
		 * For BARs, we release the resource from the PCI bus
		 * when the last child reference goes away.
		 */
		bar = FUNC2(rid);
		if (bar < 0 || bar > PCIR_MAX_BAR_0)
			return (EINVAL);
		sc = FUNC6(dev);
		if (sc->isab_pci_res[bar].ip_res == NULL)
			return (EINVAL);
		FUNC1(sc->isab_pci_res[bar].ip_res == r,
		    ("isa_pci resource mismatch"));
		if (sc->isab_pci_res[bar].ip_refs > 1) {
			sc->isab_pci_res[bar].ip_refs--;
			return (0);
		}
		FUNC1(sc->isab_pci_res[bar].ip_refs > 0,
		    ("isa_pci resource reference count underflow"));
		error = FUNC4(dev, type, rid, r);
		if (error == 0) {
			sc->isab_pci_res[bar].ip_res = NULL;
			sc->isab_pci_res[bar].ip_refs = 0;
		}
		return (error);
	}

	return (FUNC0(FUNC5(dev), child, type,
		rid, r));
}