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
struct krb5_msg_order {int km_flags; int km_length; scalar_t__* km_elem; } ;
struct krb5_context {int /*<<< orphan*/  kc_lock; struct krb5_msg_order kc_msg_order; } ;
typedef  int /*<<< orphan*/  OM_uint32 ;

/* Variables and functions */
 int GSS_C_REPLAY_FLAG ; 
 int GSS_C_SEQUENCE_FLAG ; 
 int /*<<< orphan*/  GSS_S_COMPLETE ; 
 int /*<<< orphan*/  GSS_S_DUPLICATE_TOKEN ; 
 int /*<<< orphan*/  GSS_S_FAILURE ; 
 int /*<<< orphan*/  GSS_S_GAP_TOKEN ; 
 int /*<<< orphan*/  GSS_S_OLD_TOKEN ; 
 int /*<<< orphan*/  GSS_S_UNSEQ_TOKEN ; 
 int /*<<< orphan*/  FUNC0 (struct krb5_msg_order*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static OM_uint32
FUNC3(struct krb5_context *kc, uint32_t seq)
{
	OM_uint32 res = GSS_S_FAILURE;
	struct krb5_msg_order *mo = &kc->kc_msg_order;
	int check_sequence = mo->km_flags & GSS_C_SEQUENCE_FLAG;
	int check_replay = mo->km_flags & GSS_C_REPLAY_FLAG;
	int i;

	FUNC1(&kc->kc_lock);

	/*
	 * Message is in-sequence with no gap.
	 */
	if (mo->km_length == 0 || seq == mo->km_elem[0] + 1) {
		/*
		 * This message is received in-sequence with no gaps.
		 */
		FUNC0(mo, seq, 0);
		res = GSS_S_COMPLETE;
		goto out;
	}

	if (seq > mo->km_elem[0]) {
		/*
		 * This message is received in-sequence with a gap.
		 */
		FUNC0(mo, seq, 0);
		if (check_sequence)
			res = GSS_S_GAP_TOKEN;
		else
			res = GSS_S_COMPLETE;
		goto out;
	}

	if (seq < mo->km_elem[mo->km_length - 1]) {
		if (check_replay && !check_sequence)
			res = GSS_S_OLD_TOKEN;
		else
			res = GSS_S_UNSEQ_TOKEN;
		goto out;
	}

	for (i = 0; i < mo->km_length; i++) {
		if (mo->km_elem[i] == seq) {
			res = GSS_S_DUPLICATE_TOKEN;
			goto out;
		}
		if (mo->km_elem[i] < seq) {
			/*
			 * We need to insert this seq here,
			 */
			FUNC0(mo, seq, i);
			if (check_replay && !check_sequence)
				res = GSS_S_COMPLETE;
			else
				res = GSS_S_UNSEQ_TOKEN;
			goto out;
		}
	}

out:
	FUNC2(&kc->kc_lock);

	return (res);
}