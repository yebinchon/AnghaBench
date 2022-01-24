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
struct au_mask {int dummy; } ;
struct TYPE_4__ {scalar_t__ ai_auid; struct au_mask ai_mask; } ;
struct ucred {TYPE_1__ cr_audit; } ;
struct thread {TYPE_3__* td_proc; struct ucred* td_ucred; } ;
struct TYPE_5__ {char* ar_arg_upath1; int /*<<< orphan*/  ar_arg_signum; } ;
struct kaudit_record {TYPE_2__ k_ar; } ;
typedef  scalar_t__ au_id_t ;
typedef  int /*<<< orphan*/  au_class_t ;
struct TYPE_6__ {int /*<<< orphan*/  p_sig; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kaudit_record*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ARG_SIGNUM ; 
 int /*<<< orphan*/  ARG_UPATH1 ; 
 int /*<<< orphan*/  AT_FDCWD ; 
 int /*<<< orphan*/  AUE_CORE ; 
 scalar_t__ AU_DEFAUDITID ; 
 int AU_PRS_FAILURE ; 
 int AU_PRS_SUCCESS ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 int /*<<< orphan*/  M_AUDITPATH ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct au_mask*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct kaudit_record*,int,int) ; 
 struct au_mask audit_nae_mask ; 
 struct kaudit_record* FUNC5 (int /*<<< orphan*/ ,struct thread*) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC8(struct thread *td, char *path, int errcode)
{
	struct kaudit_record *ar;
	struct au_mask *aumask;
	struct ucred *cred;
	au_class_t class;
	int ret, sorf;
	char **pathp;
	au_id_t auid;

	ret = 0;

	/*
	 * Make sure we are using the correct preselection mask.
	 */
	cred = td->td_ucred;
	auid = cred->cr_audit.ai_auid;
	if (auid == AU_DEFAUDITID)
		aumask = &audit_nae_mask;
	else
		aumask = &cred->cr_audit.ai_mask;
	/*
	 * It's possible for coredump(9) generation to fail.  Make sure that
	 * we handle this case correctly for preselection.
	 */
	if (errcode != 0)
		sorf = AU_PRS_FAILURE;
	else
		sorf = AU_PRS_SUCCESS;
	class = FUNC1(AUE_CORE);
	if (FUNC2(AUE_CORE, class, aumask, sorf) == 0 &&
	    FUNC6(auid, AUE_CORE, class, sorf, 0) == 0)
		return;

	/*
	 * If we are interested in seeing this audit record, allocate it.
	 * Where possible coredump records should contain a pathname and arg32
	 * (signal) tokens.
	 */
	ar = FUNC5(AUE_CORE, td);
	if (ar == NULL)
		return;
	if (path != NULL) {
		pathp = &ar->k_ar.ar_arg_upath1;
		*pathp = FUNC7(MAXPATHLEN, M_AUDITPATH, M_WAITOK);
		FUNC3(td, AT_FDCWD, path, *pathp);
		FUNC0(ar, ARG_UPATH1);
	}
	ar->k_ar.ar_arg_signum = td->td_proc->p_sig;
	FUNC0(ar, ARG_SIGNUM);
	if (errcode != 0)
		ret = 1;
	FUNC4(ar, errcode, ret);
}