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
struct link {int l_res_index; } ;
struct acpi_pci_link_softc {int pl_num_links; struct link* pl_links; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct acpi_pci_link_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pci_link ; 

__attribute__((used)) static struct link *
FUNC2(device_t dev, int source_index)
{
	struct acpi_pci_link_softc *sc;
	int i;

	FUNC0(pci_link);
	sc = FUNC1(dev);
	for (i = 0; i < sc->pl_num_links; i++)
		if (sc->pl_links[i].l_res_index == source_index)
			return (&sc->pl_links[i]);
	return (NULL);
}