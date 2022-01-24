#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint64_t ;
struct TYPE_2__ {int /*<<< orphan*/ * ifp; } ;
struct octeon_device {TYPE_1__ props; struct lio_instr_queue** instr_queue; } ;
struct lio_instr_queue {size_t last_db_time; int /*<<< orphan*/  enq_lock; int /*<<< orphan*/ * br; int /*<<< orphan*/  db_timeout; int /*<<< orphan*/  instr_pending; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct lio_instr_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct octeon_device*,struct lio_instr_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct lio_instr_queue*) ; 
 size_t FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 size_t ticks ; 

__attribute__((used)) static void
FUNC9(struct octeon_device *oct, uint64_t iq_no)
{
	struct lio_instr_queue	*iq;
	uint64_t		next_time;

	if (oct == NULL)
		return;

	iq = oct->instr_queue[iq_no];
	if (iq == NULL)
		return;

	if (FUNC0(&iq->instr_pending)) {
		/* If ticks - last_db_time < db_timeout do nothing  */
		next_time = iq->last_db_time + FUNC6(iq->db_timeout);
		if (!FUNC2(ticks, next_time))
			return;

		iq->last_db_time = ticks;

		/* Flush the instruction queue */
		FUNC4(oct, iq, 0);

		FUNC3(NULL, iq);
	}

	if (oct->props.ifp != NULL && iq->br != NULL) {
		if (FUNC7(&iq->enq_lock)) {
			if (!FUNC1(oct->props.ifp, iq->br))
				FUNC5(oct->props.ifp, iq);

			FUNC8(&iq->enq_lock);
		}
	}
}