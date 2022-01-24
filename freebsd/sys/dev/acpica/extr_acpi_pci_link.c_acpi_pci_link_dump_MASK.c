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
struct link {int l_irq; int l_references; int l_num_irqs; int* l_irqs; scalar_t__ l_routed; } ;
struct acpi_pci_link_softc {int pl_num_links; struct link* pl_links; int /*<<< orphan*/  pl_dev; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pci_link ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 

__attribute__((used)) static void
FUNC4(struct acpi_pci_link_softc *sc, int header, const char *tag)
{
	struct link *link;
	char buf[16];
	int i, j;

	FUNC0(pci_link);
	if (header) {
		FUNC3(buf, sizeof(buf), "%s:",
		    FUNC1(sc->pl_dev));
		FUNC2("%-16.16s  Index  IRQ  Rtd  Ref  IRQs\n", buf);
	}
	for (i = 0; i < sc->pl_num_links; i++) {
		link = &sc->pl_links[i];
		FUNC2("  %-14.14s  %5d  %3d   %c   %3d ", i == 0 ? tag : "", i,
		    link->l_irq, link->l_routed ? 'Y' : 'N',
		    link->l_references);
		if (link->l_num_irqs == 0)
			FUNC2(" none");
		else for (j = 0; j < link->l_num_irqs; j++)
			FUNC2(" %d", link->l_irqs[j]);
		FUNC2("\n");
	}
}