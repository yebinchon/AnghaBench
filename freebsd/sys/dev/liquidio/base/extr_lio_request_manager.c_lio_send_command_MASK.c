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
typedef  size_t uint32_t ;
struct octeon_device {struct lio_instr_queue** instr_queue; } ;
struct lio_iq_post_status {scalar_t__ status; int /*<<< orphan*/  index; } ;
struct lio_instr_queue {int /*<<< orphan*/  post_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct octeon_device*,size_t,int /*<<< orphan*/ ,int) ; 
 scalar_t__ LIO_IQ_SEND_FAILED ; 
 scalar_t__ LIO_IQ_SEND_STOP ; 
 int /*<<< orphan*/  FUNC1 (struct lio_instr_queue*,int /*<<< orphan*/ ,void*,size_t) ; 
 struct lio_iq_post_status FUNC2 (struct lio_instr_queue*,void*) ; 
 int /*<<< orphan*/  bytes_sent ; 
 int /*<<< orphan*/  instr_dropped ; 
 int /*<<< orphan*/  instr_posted ; 
 int /*<<< orphan*/  FUNC3 (struct octeon_device*,struct lio_instr_queue*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(struct octeon_device *oct, uint32_t iq_no,
		 uint32_t force_db, void *cmd, void *buf,
		 uint32_t datasize, uint32_t reqtype)
{
	struct lio_iq_post_status	st;
	struct lio_instr_queue		*iq = oct->instr_queue[iq_no];

	/*
	 * Get the lock and prevent other tasks and tx interrupt handler
	 * from running.
	 */
	FUNC4(&iq->post_lock);

	st = FUNC2(iq, cmd);

	if (st.status != LIO_IQ_SEND_FAILED) {
		FUNC1(iq, st.index, buf, reqtype);
		FUNC0(oct, iq_no, bytes_sent, datasize);
		FUNC0(oct, iq_no, instr_posted, 1);

		if (force_db || (st.status == LIO_IQ_SEND_STOP))
			FUNC3(oct, iq);
	} else {
		FUNC0(oct, iq_no, instr_dropped, 1);
	}

	FUNC5(&iq->post_lock);

	/*
	 * This is only done here to expedite packets being flushed for
	 * cases where there are no IQ completion interrupts.
	 */

	return (st.status);
}