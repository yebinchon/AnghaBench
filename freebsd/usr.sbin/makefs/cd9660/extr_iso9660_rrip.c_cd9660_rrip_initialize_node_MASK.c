#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct ISO_SUSP_ATTRIBUTES {int dummy; } ;
struct TYPE_17__ {scalar_t__ rootNode; TYPE_3__* rr_moved_dir; } ;
typedef  TYPE_2__ iso9660_disk ;
struct TYPE_18__ {int type; scalar_t__ parent; int /*<<< orphan*/  head; int /*<<< orphan*/ * rr_real_parent; int /*<<< orphan*/ * rr_relocated; TYPE_1__* isoDirRecord; TYPE_4__* node; } ;
typedef  TYPE_3__ cd9660node ;
struct TYPE_19__ {int /*<<< orphan*/  name; int /*<<< orphan*/ * inode; } ;
struct TYPE_16__ {scalar_t__* name_len; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int CD9660_TYPE_DOT ; 
 int CD9660_TYPE_DOTDOT ; 
 int /*<<< orphan*/  RRIP_DEFAULT_MOVE_DIR_NAME ; 
 int /*<<< orphan*/  SUSP_ENTRY_RRIP_CL ; 
 int /*<<< orphan*/  SUSP_ENTRY_RRIP_PL ; 
 int /*<<< orphan*/  SUSP_ENTRY_RRIP_PX ; 
 int /*<<< orphan*/  SUSP_ENTRY_RRIP_RE ; 
 int /*<<< orphan*/  SUSP_LOC_DOTDOT ; 
 int /*<<< orphan*/  SUSP_LOC_ENTRY ; 
 int /*<<< orphan*/  SUSP_RRIP_ER_EXT_DES ; 
 int /*<<< orphan*/  SUSP_RRIP_ER_EXT_ID ; 
 int /*<<< orphan*/  SUSP_RRIP_ER_EXT_SRC ; 
 int /*<<< orphan*/  SUSP_TYPE_RRIP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ISO_SUSP_ATTRIBUTES*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ISO_SUSP_ATTRIBUTES*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (struct ISO_SUSP_ATTRIBUTES*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct ISO_SUSP_ATTRIBUTES*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ISO_SUSP_ATTRIBUTES*,TYPE_4__*) ; 
 struct ISO_SUSP_ATTRIBUTES* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  rr_ll ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

int
FUNC13(iso9660_disk *diskStructure, cd9660node *node,
    cd9660node *parent, cd9660node *grandparent)
{
	struct ISO_SUSP_ATTRIBUTES *current = NULL;

	FUNC1(node != NULL);

	if (node->type & CD9660_TYPE_DOT) {
		/*
		 * Handle ER - should be the only entry to appear on
		 * a "." record
		 */
		if (node->parent == diskStructure->rootNode) {
			FUNC8(node, 1, SUSP_RRIP_ER_EXT_ID,
				SUSP_RRIP_ER_EXT_DES, SUSP_RRIP_ER_EXT_SRC);
		}
		if (parent != NULL && parent->node != NULL &&
		    parent->node->inode != NULL) {
			/* PX - POSIX attributes */
			current = FUNC10(SUSP_TYPE_RRIP,
				SUSP_ENTRY_RRIP_PX, "PX", SUSP_LOC_ENTRY);
			FUNC9(current, parent->node);
			FUNC0(&node->head, current, rr_ll);
		}
	} else if (node->type & CD9660_TYPE_DOTDOT) {
		if (grandparent != NULL && grandparent->node != NULL &&
		    grandparent->node->inode != NULL) {
			/* PX - POSIX attributes */
			current = FUNC10(SUSP_TYPE_RRIP,
				SUSP_ENTRY_RRIP_PX, "PX", SUSP_LOC_ENTRY);
			FUNC9(current, grandparent->node);
			FUNC0(&node->head, current, rr_ll);
		}
		/* Handle PL */
		if (parent != NULL && parent->rr_real_parent != NULL) {
			current = FUNC10(SUSP_TYPE_RRIP,
			    SUSP_ENTRY_RRIP_PL, "PL", SUSP_LOC_DOTDOT);
			FUNC4(current,node);
			FUNC0(&node->head, current, rr_ll);
		}
	} else {
		FUNC7(node);

		/*
		 * Not every node needs a NM set - only if the name is
		 * actually different. IE: If a file is TEST -> TEST,
		 * no NM. test -> TEST, need a NM
		 *
		 * The rr_moved_dir needs to be assigned a NM record as well.
		 */
		if (node == diskStructure->rr_moved_dir) {
			FUNC6(node, RRIP_DEFAULT_MOVE_DIR_NAME);
		}
		else if ((node->node != NULL) &&
			((FUNC12(node->node->name) !=
			    (uint8_t)node->isoDirRecord->name_len[0]) ||
			(FUNC11(node->node->name,node->isoDirRecord->name,
				(uint8_t)node->isoDirRecord->name_len[0]) != 0))) {
			FUNC3(node);
		}



		/* Rock ridge directory relocation code here. */

		/* First handle the CL for the placeholder file. */
		if (node->rr_relocated != NULL) {
			current = FUNC10(SUSP_TYPE_RRIP,
				SUSP_ENTRY_RRIP_CL, "CL", SUSP_LOC_ENTRY);
			FUNC2(current, node);
			FUNC0(&node->head, current, rr_ll);
		}

		/* Handle RE*/
		if (node->rr_real_parent != NULL) {
			current = FUNC10(SUSP_TYPE_RRIP,
				SUSP_ENTRY_RRIP_RE, "RE", SUSP_LOC_ENTRY);
			FUNC5(current,node);
			FUNC0(&node->head, current, rr_ll);
		}
	}
	return 1;
}