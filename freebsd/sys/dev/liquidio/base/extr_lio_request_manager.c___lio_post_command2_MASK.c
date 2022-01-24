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
typedef  int /*<<< orphan*/  uint8_t ;
struct lio_iq_post_status {int index; int /*<<< orphan*/  status; } ;
struct lio_instr_queue {int max_count; int host_write_index; int /*<<< orphan*/  instr_pending; int /*<<< orphan*/  fill_cnt; } ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  LIO_IQ_SEND_FAILED ; 
 int /*<<< orphan*/  LIO_IQ_SEND_OK ; 
 int /*<<< orphan*/  LIO_IQ_SEND_STOP ; 
 int /*<<< orphan*/  FUNC0 (struct lio_instr_queue*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static inline struct lio_iq_post_status
FUNC5(struct lio_instr_queue *iq, uint8_t *cmd)
{
	struct lio_iq_post_status	st;

	st.status = LIO_IQ_SEND_OK;

	/*
	 * This ensures that the read index does not wrap around to the same
	 * position if queue gets full before Octeon could fetch any instr.
	 */
	if (FUNC2(&iq->instr_pending) >=
	    (int32_t)(iq->max_count - 1)) {
		st.status = LIO_IQ_SEND_FAILED;
		st.index = -1;
		return (st);
	}

	if (FUNC2(&iq->instr_pending) >=
	    (int32_t)(iq->max_count - 2))
		st.status = LIO_IQ_SEND_STOP;

	FUNC0(iq, cmd);

	/* "index" is returned, host_write_index is modified. */
	st.index = iq->host_write_index;
	iq->host_write_index = FUNC3(iq->host_write_index, 1,
					      iq->max_count);
	iq->fill_cnt++;

	/*
	 * Flush the command into memory. We need to be sure the data is in
	 * memory before indicating that the instruction is pending.
	 */
	FUNC4();

	FUNC1(&iq->instr_pending, 1);

	return (st);
}