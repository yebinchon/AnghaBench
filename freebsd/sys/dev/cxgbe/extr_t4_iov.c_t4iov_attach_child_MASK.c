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
struct t4iov_softc {int sc_attached; int /*<<< orphan*/  sc_main; } ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct t4iov_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 () ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct t4iov_softc *sc;
#ifdef PCI_IOV
	nvlist_t *pf_schema, *vf_schema;
#endif
	device_t pdev;
	int error;

	sc = FUNC3(dev);
	FUNC0(!sc->sc_attached);

	/*
	 * PF0-3 are associated with a specific port on the NIC (PF0
	 * with port 0, etc.).  Ask the PF4 driver for the device for
	 * this function's associated port to determine if the port is
	 * present.
	 */
	error = FUNC1(sc->sc_main, FUNC5(dev), &pdev);
	if (error)
		return (0);

#ifdef PCI_IOV
	pf_schema = pci_iov_schema_alloc_node();
	vf_schema = pci_iov_schema_alloc_node();
	error = pci_iov_attach_name(dev, pf_schema, vf_schema, "%s",
	    device_get_nameunit(pdev));
	if (error) {
		device_printf(dev, "Failed to initialize SR-IOV: %d\n", error);
		return (0);
	}
#endif

	sc->sc_attached = true;
	return (0);
}