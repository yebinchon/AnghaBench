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
struct octeon_device {int /*<<< orphan*/  status; } ;
struct lio_instr_queue {int /*<<< orphan*/  last_db_time; scalar_t__ fill_cnt; int /*<<< orphan*/  doorbell_reg; } ;

/* Variables and functions */
 scalar_t__ LIO_DEV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct octeon_device*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  ticks ; 

__attribute__((used)) static inline void
FUNC3(struct octeon_device *oct, struct lio_instr_queue *iq)
{

	if (FUNC1(&oct->status) == LIO_DEV_RUNNING) {
		FUNC2(oct, iq->doorbell_reg, iq->fill_cnt);
		/* make sure doorbell write goes through */
		FUNC0();
		iq->fill_cnt = 0;
		iq->last_db_time = ticks;
		return;
	}
}