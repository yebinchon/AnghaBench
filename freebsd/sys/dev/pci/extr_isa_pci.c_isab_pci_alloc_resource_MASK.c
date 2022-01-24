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
typedef  int /*<<< orphan*/  u_int ;
struct resource {int dummy; } ;
struct isab_pci_softc {TYPE_1__* isab_pci_res; } ;
typedef  int /*<<< orphan*/  rman_res_t ;
typedef  scalar_t__ device_t ;
struct TYPE_2__ {struct resource* ip_res; int /*<<< orphan*/  ip_refs; } ;

/* Variables and functions */
 struct resource* FUNC0 (scalar_t__,scalar_t__,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PCIR_MAX_BAR_0 ; 
 int FUNC1 (int) ; 
#define  SYS_RES_IOPORT 129 
#define  SYS_RES_MEMORY 128 
 struct resource* FUNC2 (scalar_t__,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource* FUNC3 (scalar_t__,scalar_t__,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 struct isab_pci_softc* FUNC5 (scalar_t__) ; 

__attribute__((used)) static struct resource *
FUNC6(device_t dev, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
	struct isab_pci_softc *sc;
	int bar;

	if (FUNC4(child) != dev)
		return FUNC3(dev, child, type, rid, start,
		    end, count, flags);

	switch (type) {
	case SYS_RES_MEMORY:
	case SYS_RES_IOPORT:
		/*
		 * For BARs, we cache the resource so that we only allocate it
		 * from the PCI bus once.
		 */
		bar = FUNC1(*rid);
		if (bar < 0 || bar > PCIR_MAX_BAR_0)
			return (NULL);
		sc = FUNC5(dev);
		if (sc->isab_pci_res[bar].ip_res == NULL)
			sc->isab_pci_res[bar].ip_res = FUNC2(dev, type,
			    rid, start, end, count, flags);
		if (sc->isab_pci_res[bar].ip_res != NULL)
			sc->isab_pci_res[bar].ip_refs++;
		return (sc->isab_pci_res[bar].ip_res);
	}

	return (FUNC0(FUNC4(dev), child, type, rid,
		start, end, count, flags));
}