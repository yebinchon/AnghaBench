#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ISO_SUSP_ATTRIBUTES {int dummy; } ;
struct TYPE_6__ {scalar_t__ rootNode; } ;
typedef  TYPE_1__ iso9660_disk ;
struct TYPE_7__ {int type; scalar_t__ parent; int /*<<< orphan*/  head; } ;
typedef  TYPE_2__ cd9660node ;

/* Variables and functions */
 int CD9660_TYPE_DOT ; 
 int /*<<< orphan*/  SUSP_ENTRY_SUSP_SP ; 
 int /*<<< orphan*/  SUSP_LOC_DOT ; 
 int /*<<< orphan*/  SUSP_TYPE_SUSP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ISO_SUSP_ATTRIBUTES*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ISO_SUSP_ATTRIBUTES*,TYPE_2__*) ; 
 struct ISO_SUSP_ATTRIBUTES* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rr_ll ; 

int
FUNC3(iso9660_disk *diskStructure, cd9660node *node)
{
	struct ISO_SUSP_ATTRIBUTES *temp;

	/*
	 * Requirements/notes:
	 * CE: is added for us where needed
	 * ST: not sure if it is even required, but if so, should be
	 *     handled by the CE code
	 * PD: isn't needed (though might be added for testing)
	 * SP: is stored ONLY on the . record of the root directory
	 * ES: not sure
	 */

	/* Check for root directory, add SP and ER if needed. */
	if (node->type & CD9660_TYPE_DOT) {
		if (node->parent == diskStructure->rootNode) {
			temp = FUNC2(SUSP_TYPE_SUSP,
				SUSP_ENTRY_SUSP_SP, "SP", SUSP_LOC_DOT);
			FUNC1(temp, node);

			/* Should be first entry. */
			FUNC0(&node->head, temp, rr_ll);
		}
	}
	return 1;
}