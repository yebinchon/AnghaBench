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
struct TYPE_2__ {scalar_t__ ar_errno; int /*<<< orphan*/  ar_event; int /*<<< orphan*/  ar_subj_auid; } ;
struct kaudit_record {int k_ar_commit; TYPE_1__ k_ar; int /*<<< orphan*/  k_ulen; int /*<<< orphan*/  k_udata; } ;
struct au_record {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  au_id_t ;
typedef  int /*<<< orphan*/  au_event_t ;
typedef  int /*<<< orphan*/  au_class_t ;

/* Variables and functions */
 int AR_COMMIT_KERNEL ; 
 int AR_COMMIT_USER ; 
 int AR_PRESELECT_DTRACE ; 
 int AR_PRESELECT_PIPE ; 
 int AR_PRESELECT_TRAIL ; 
 int AR_PRESELECT_USER_PIPE ; 
 int AR_PRESELECT_USER_TRAIL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int AU_PRS_FAILURE ; 
 int AU_PRS_SUCCESS ; 
#define  BSM_FAILURE 130 
#define  BSM_NOAUDIT 129 
#define  BSM_SUCCESS 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  audit_cred ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  audit_vp ; 
 int /*<<< orphan*/  FUNC7 (struct kaudit_record*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct au_record*) ; 
 int FUNC9 (struct kaudit_record*,struct au_record**) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void
FUNC12(struct kaudit_record *ar)
{
	struct au_record *bsm;
	au_class_t class;
	au_event_t event;
	au_id_t auid;
	int error, sorf;
	int locked;

	/*
	 * We hold the audit worker lock over both writes, if there are two,
	 * so that the two records won't be split across a rotation and end
	 * up in two different trail files.
	 */
	if (((ar->k_ar_commit & AR_COMMIT_USER) &&
	    (ar->k_ar_commit & AR_PRESELECT_USER_TRAIL)) ||
	    (ar->k_ar_commit & AR_PRESELECT_TRAIL)) {
		FUNC0();
		locked = 1;
	} else
		locked = 0;

	/*
	 * First, handle the user record, if any: commit to the system trail
	 * and audit pipes as selected.
	 */
	if ((ar->k_ar_commit & AR_COMMIT_USER) &&
	    (ar->k_ar_commit & AR_PRESELECT_USER_TRAIL)) {
		FUNC1();
		FUNC6(audit_vp, audit_cred, ar->k_udata,
		    ar->k_ulen);
	}

	if ((ar->k_ar_commit & AR_COMMIT_USER) &&
	    (ar->k_ar_commit & AR_PRESELECT_USER_PIPE))
		FUNC5(ar->k_udata, ar->k_ulen);

	if (!(ar->k_ar_commit & AR_COMMIT_KERNEL) ||
	    ((ar->k_ar_commit & AR_PRESELECT_PIPE) == 0 &&
	    (ar->k_ar_commit & AR_PRESELECT_TRAIL) == 0 &&
	    (ar->k_ar_commit & AR_PRESELECT_DTRACE) == 0))
		goto out;

	auid = ar->k_ar.ar_subj_auid;
	event = ar->k_ar.ar_event;
	class = FUNC3(event);
	if (ar->k_ar.ar_errno == 0)
		sorf = AU_PRS_SUCCESS;
	else
		sorf = AU_PRS_FAILURE;

	error = FUNC9(ar, &bsm);
	switch (error) {
	case BSM_NOAUDIT:
		goto out;

	case BSM_FAILURE:
		FUNC11("audit_worker_process_record: BSM_FAILURE\n");
		goto out;

	case BSM_SUCCESS:
		break;

	default:
		FUNC10("kaudit_to_bsm returned %d", error);
	}

	if (ar->k_ar_commit & AR_PRESELECT_TRAIL) {
		FUNC1();
		FUNC6(audit_vp, audit_cred, bsm->data, bsm->len);
	}

	if (ar->k_ar_commit & AR_PRESELECT_PIPE)
		FUNC4(auid, event, class, sorf,
		    ar->k_ar_commit & AR_PRESELECT_TRAIL, bsm->data,
		    bsm->len);

#ifdef KDTRACE_HOOKS
	/*
	 * Version of the dtaudit commit hook that accepts BSM.
	 */
	if (ar->k_ar_commit & AR_PRESELECT_DTRACE) {
		if (dtaudit_hook_bsm != NULL)
			dtaudit_hook_bsm(ar, auid, event, class, sorf,
			    bsm->data, bsm->len);
	}
#endif

	FUNC8(bsm);
out:
	if (locked)
		FUNC2();
}