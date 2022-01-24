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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct ntb_softc {int db_link_mask; int fake_db; int force_db; int db_mask; int db_valid_mask; int /*<<< orphan*/  device; int /*<<< orphan*/  last_ts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ntb_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ntb_softc*) ; 
 scalar_t__ FUNC2 (struct ntb_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NTB_SB01BASE_LOCKUP ; 
 scalar_t__ FUNC3 (struct ntb_softc*) ; 
 int FUNC4 (struct ntb_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ticks ; 

__attribute__((used)) static void
FUNC7(struct ntb_softc *ntb, uint32_t vec)
{
	uint64_t vec_mask;

	ntb->last_ts = ticks;
	vec_mask = FUNC4(ntb, vec);

	if ((vec_mask & ntb->db_link_mask) != 0) {
		if (FUNC3(ntb))
			FUNC6(ntb->device);
	}

	if (FUNC2(ntb, NTB_SB01BASE_LOCKUP) &&
	    (vec_mask & ntb->db_link_mask) == 0) {
		FUNC0(ntb);

		/*
		 * Do not report same DB events again if not cleared yet,
		 * unless the mask was just cleared for them and this
		 * interrupt handler call can be the consequence of it.
		 */
		vec_mask &= ~ntb->fake_db | ntb->force_db;
		ntb->force_db &= ~vec_mask;

		/* Update our internal doorbell register. */
		ntb->fake_db |= vec_mask;

		/* Do not report masked DB events. */
		vec_mask &= ~ntb->db_mask;

		FUNC1(ntb);
	}

	if ((vec_mask & ntb->db_valid_mask) != 0)
		FUNC5(ntb->device, vec);
}