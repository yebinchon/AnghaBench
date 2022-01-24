#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_4__ {int /*<<< orphan*/  protocol_id; int /*<<< orphan*/  cmd_id; } ;
struct TYPE_5__ {TYPE_1__ hdr; } ;
struct ecore_spq_entry {scalar_t__ comp_mode; int /*<<< orphan*/  list; int /*<<< orphan*/ * queue; int /*<<< orphan*/  priority; TYPE_2__ elem; } ;
struct ecore_spq {int /*<<< orphan*/  lock; int /*<<< orphan*/  chain; int /*<<< orphan*/  completion_pending; int /*<<< orphan*/  unlimited_pending; } ;
struct ecore_hwfn {TYPE_3__* p_dev; struct ecore_spq* p_spq; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_6__ {scalar_t__ recov_in_prog; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ECORE_INVAL ; 
 int /*<<< orphan*/  ECORE_MSG_SPQ ; 
 scalar_t__ ECORE_SPQ_MODE_EBLOCK ; 
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,struct ecore_spq_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ecore_spq* OSAL_NULL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ecore_hwfn*,struct ecore_spq_entry*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct ecore_hwfn*,struct ecore_spq_entry*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct ecore_hwfn*,struct ecore_spq_entry*,int /*<<< orphan*/ *,int) ; 
 int FUNC10 (struct ecore_hwfn*,struct ecore_spq_entry*) ; 
 int FUNC11 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC12 (struct ecore_hwfn*,struct ecore_spq_entry*) ; 

enum _ecore_status_t FUNC13(struct ecore_hwfn		*p_hwfn,
				    struct ecore_spq_entry	*p_ent,
				    u8                          *fw_return_code)
{
	enum _ecore_status_t	rc = ECORE_SUCCESS;
	struct ecore_spq	*p_spq = p_hwfn ? p_hwfn->p_spq : OSAL_NULL;
	bool			b_ret_ent = true;

	if (!p_hwfn)
		return ECORE_INVAL;

	if (!p_ent) {
		FUNC0(p_hwfn, true, "Got a NULL pointer\n");
		return ECORE_INVAL;
	}

	if (p_hwfn->p_dev->recov_in_prog) {
		FUNC1(p_hwfn, ECORE_MSG_SPQ,
			   "Recovery is in progress -> skip spq post [cmd %02x protocol %02x]\n",
			   p_ent->elem.hdr.cmd_id, p_ent->elem.hdr.protocol_id);
		/* Return success to let the flows to be completed successfully
		 * w/o any error handling.
		 */
		return ECORE_SUCCESS;
	}

	FUNC4(&p_spq->lock);

	/* Complete the entry */
	rc = FUNC10(p_hwfn, p_ent);

	/* Check return value after LOCK is taken for cleaner error flow */
	if (rc)
		goto spq_post_fail;

	/* Add the request to the pending queue */
	rc = FUNC8(p_hwfn, p_ent, p_ent->priority);
	if (rc)
		goto spq_post_fail;

	rc = FUNC11(p_hwfn);
	if (rc) {
		/* Since it's possible that pending failed for a different
		 * entry [although unlikely], the failed entry was already
		 * dealt with; No need to return it here.
		 */
		b_ret_ent = false;
		goto spq_post_fail;
	}

	FUNC5(&p_spq->lock);

	if (p_ent->comp_mode == ECORE_SPQ_MODE_EBLOCK) {
		/* For entries in ECORE BLOCK mode, the completion code cannot
		 * perform the necessary cleanup - if it did, we couldn't
		 * access p_ent here to see whether it's successful or not.
		 * Thus, after gaining the answer perform the cleanup here.
		 */
		rc = FUNC9(p_hwfn, p_ent, fw_return_code,
				     p_ent->queue == &p_spq->unlimited_pending);

		if (p_ent->queue == &p_spq->unlimited_pending) {
			/* This is an allocated p_ent which does not need to
			 * return to pool.
			 */
			FUNC2(p_hwfn->p_dev, p_ent);

			/* TBD: handle error flow and remove p_ent from
			 * completion pending
			 */
			return rc;
		}

		if (rc)
			goto spq_post_fail2;

		/* return to pool */
		FUNC12(p_hwfn, p_ent);
	}
	return rc;

spq_post_fail2:
	FUNC4(&p_spq->lock);
	FUNC3(&p_ent->list, &p_spq->completion_pending);
	FUNC7(&p_spq->chain);

spq_post_fail:
	/* return to the free pool */
	if (b_ret_ent)
		FUNC6(p_hwfn, p_ent);
	FUNC5(&p_spq->lock);

	return rc;
}