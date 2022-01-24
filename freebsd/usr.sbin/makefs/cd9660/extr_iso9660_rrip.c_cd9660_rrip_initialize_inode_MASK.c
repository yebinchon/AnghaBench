#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct ISO_SUSP_ATTRIBUTES {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  head; TYPE_4__* node; int /*<<< orphan*/  cn_children; } ;
typedef  TYPE_3__ cd9660node ;
struct TYPE_12__ {TYPE_2__* inode; } ;
struct TYPE_9__ {int /*<<< orphan*/  st_mode; } ;
struct TYPE_10__ {TYPE_1__ st; } ;

/* Variables and functions */
 int /*<<< orphan*/  SUSP_ENTRY_RRIP_PN ; 
 int /*<<< orphan*/  SUSP_ENTRY_RRIP_PX ; 
 int /*<<< orphan*/  SUSP_ENTRY_RRIP_TF ; 
 int /*<<< orphan*/  SUSP_LOC_ENTRY ; 
 int /*<<< orphan*/  SUSP_TYPE_RRIP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct ISO_SUSP_ATTRIBUTES*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (struct ISO_SUSP_ATTRIBUTES*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (struct ISO_SUSP_ATTRIBUTES*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (struct ISO_SUSP_ATTRIBUTES*,TYPE_4__*) ; 
 struct ISO_SUSP_ATTRIBUTES* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rr_ll ; 

__attribute__((used)) static void
FUNC10(cd9660node *node)
{
	struct ISO_SUSP_ATTRIBUTES *attr;

	/*
	 * Inode dependent values - this may change,
	 * but for now virtual files and directories do
	 * not have an inode structure
	 */

	if ((node->node != NULL) && (node->node->inode != NULL)) {
		/* PX - POSIX attributes */
		attr = FUNC9(SUSP_TYPE_RRIP,
			SUSP_ENTRY_RRIP_PX, "PX", SUSP_LOC_ENTRY);
		FUNC7(attr, node->node);

		FUNC4(&node->head, attr, rr_ll);

		/* TF - timestamp */
		attr = FUNC9(SUSP_TYPE_RRIP,
			SUSP_ENTRY_RRIP_TF, "TF", SUSP_LOC_ENTRY);
		FUNC8(attr, node->node);
		FUNC4(&node->head, attr, rr_ll);

		/* SL - Symbolic link */
		/* ?????????? Dan - why is this here? */
		if (FUNC3(&node->cn_children) &&
		    node->node->inode != NULL &&
		    FUNC2(node->node->inode->st.st_mode))
			FUNC5(node);

		/* PN - device number */
		if (node->node->inode != NULL &&
		    ((FUNC1(node->node->inode->st.st_mode) ||
		     FUNC0(node->node->inode->st.st_mode)))) {
			attr =
			    FUNC9(SUSP_TYPE_RRIP,
				SUSP_ENTRY_RRIP_PN, "PN",
				SUSP_LOC_ENTRY);
			FUNC6(attr, node->node);
			FUNC4(&node->head, attr, rr_ll);
		}
	}
}