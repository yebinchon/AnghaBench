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
typedef  int /*<<< orphan*/  uintmax_t ;
struct ntb_softc {int /*<<< orphan*/  device; } ;
struct ntb_pci_bar_info {int size; int pbase; scalar_t__ vbase; int /*<<< orphan*/  pci_resource_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,char*,void*,void*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void
FUNC2(struct ntb_softc *ntb, struct ntb_pci_bar_info *bar,
    const char *kind)
{

	FUNC1(ntb->device,
	    "Mapped BAR%d v:[%p-%p] p:[%p-%p] (0x%jx bytes) (%s)\n",
	    FUNC0(bar->pci_resource_id), bar->vbase,
	    (char *)bar->vbase + bar->size - 1,
	    (void *)bar->pbase, (void *)(bar->pbase + bar->size - 1),
	    (uintmax_t)bar->size, kind);
}