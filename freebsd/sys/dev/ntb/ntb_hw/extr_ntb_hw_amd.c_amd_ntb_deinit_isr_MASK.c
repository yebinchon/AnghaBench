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
struct amd_ntb_softc {int allocated_interrupts; int /*<<< orphan*/  device; struct amd_ntb_int_info* int_info; int /*<<< orphan*/  db_mask; int /*<<< orphan*/  db_valid_mask; } ;
struct amd_ntb_int_info {int /*<<< orphan*/ * res; int /*<<< orphan*/ * tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMD_DBMASK_OFFSET ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (struct amd_ntb_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct amd_ntb_softc *ntb)
{
	struct amd_ntb_int_info *current_int;
	int i;

	/* Mask all doorbell interrupts */
	ntb->db_mask = ntb->db_valid_mask;
	FUNC1(4, AMD_DBMASK_OFFSET, ntb->db_mask);

	for (i = 0; i < ntb->allocated_interrupts; i++) {
		current_int = &ntb->int_info[i];
		if (current_int->tag != NULL)
			FUNC3(ntb->device, current_int->res,
			    current_int->tag);

		if (current_int->res != NULL)
			FUNC2(ntb->device, SYS_RES_IRQ,
			    FUNC4(current_int->res), current_int->res);
	}

	FUNC0(ntb);
}