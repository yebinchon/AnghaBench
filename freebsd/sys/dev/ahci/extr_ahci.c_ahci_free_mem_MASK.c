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
struct ahci_controller {int /*<<< orphan*/ * r_msix_table; int /*<<< orphan*/ * r_mem; int /*<<< orphan*/ * r_msix_pba; int /*<<< orphan*/  r_msix_pba_rid; int /*<<< orphan*/  r_msix_tab_rid; int /*<<< orphan*/  r_rid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ahci_controller* FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(device_t dev)
{
	struct ahci_controller *ctlr = FUNC1(dev);

	/* Release memory resources */
	if (ctlr->r_mem)
		FUNC0(dev, SYS_RES_MEMORY, ctlr->r_rid, ctlr->r_mem);
	if (ctlr->r_msix_table)
		FUNC0(dev, SYS_RES_MEMORY,
		    ctlr->r_msix_tab_rid, ctlr->r_msix_table);
	if (ctlr->r_msix_pba)
		FUNC0(dev, SYS_RES_MEMORY,
		    ctlr->r_msix_pba_rid, ctlr->r_msix_pba);

	ctlr->r_msix_pba = ctlr->r_mem = ctlr->r_msix_table = NULL;
}