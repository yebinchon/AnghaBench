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
typedef  scalar_t__ uint32_t ;
struct ttm_buffer_object {int seq_valid; scalar_t__ val_seq; int /*<<< orphan*/  reserved; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int EDEADLK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct ttm_buffer_object*,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ttm_buffer_object*) ; 

int FUNC4(struct ttm_buffer_object *bo,
			  bool interruptible,
			  bool no_wait, bool use_sequence, uint32_t sequence)
{
	int ret;

	while (FUNC2(FUNC0(&bo->reserved, 1) != 0)) {
		/**
		 * Deadlock avoidance for multi-bo reserving.
		 */
		if (use_sequence && bo->seq_valid) {
			/**
			 * We've already reserved this one.
			 */
			if (FUNC2(sequence == bo->val_seq))
				return -EDEADLK;
			/**
			 * Already reserved by a thread that will not back
			 * off for us. We need to back off.
			 */
			if (FUNC2(sequence - bo->val_seq < (1U << 31)))
				return -EAGAIN;
		}

		if (no_wait)
			return -EBUSY;

		ret = FUNC1(bo, interruptible);

		if (FUNC2(ret))
			return ret;
	}

	if (use_sequence) {
		bool wake_up = false;
		/**
		 * Wake up waiters that may need to recheck for deadlock,
		 * if we decreased the sequence number.
		 */
		if (FUNC2((bo->val_seq - sequence < (1U << 31))
			     || !bo->seq_valid))
			wake_up = true;

		/*
		 * In the worst case with memory ordering these values can be
		 * seen in the wrong order. However since we call wake_up_all
		 * in that case, this will hopefully not pose a problem,
		 * and the worst case would only cause someone to accidentally
		 * hit -EAGAIN in ttm_bo_reserve when they see old value of
		 * val_seq. However this would only happen if seq_valid was
		 * written before val_seq was, and just means some slightly
		 * increased cpu usage
		 */
		bo->val_seq = sequence;
		bo->seq_valid = true;
		if (wake_up)
			FUNC3(bo);
	} else {
		bo->seq_valid = false;
	}

	return 0;
}