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
struct TYPE_5__ {int /*<<< orphan*/  ai_termid; int /*<<< orphan*/  ai_mask; int /*<<< orphan*/  ai_asid; int /*<<< orphan*/  ai_auid; } ;
struct ucred {struct prison* cr_prison; TYPE_2__ cr_audit; int /*<<< orphan*/ * cr_groups; int /*<<< orphan*/  cr_rgid; int /*<<< orphan*/  cr_ruid; } ;
struct thread {TYPE_1__* td_proc; struct ucred* td_ucred; } ;
struct prison {int /*<<< orphan*/  pr_name; } ;
struct TYPE_6__ {char* ar_jailname; int /*<<< orphan*/  ar_subj_term_addr; int /*<<< orphan*/  ar_subj_amask; int /*<<< orphan*/  ar_subj_pid; int /*<<< orphan*/  ar_subj_asid; int /*<<< orphan*/  ar_subj_auid; int /*<<< orphan*/  ar_subj_egid; int /*<<< orphan*/  ar_subj_rgid; int /*<<< orphan*/  ar_subj_ruid; int /*<<< orphan*/  ar_subj_cred; int /*<<< orphan*/  ar_starttime; int /*<<< orphan*/  ar_magic; } ;
struct kaudit_record {TYPE_3__ k_ar; } ;
struct TYPE_4__ {int /*<<< orphan*/  p_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_RECORD_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct kaudit_record*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ucred*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct ucred*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(void *mem, int size, void *arg, int flags)
{
	struct kaudit_record *ar;
	struct thread *td;
	struct ucred *cred;
	struct prison *pr;

	FUNC0(sizeof(*ar) == size, ("audit_record_ctor: wrong size"));

	td = arg;
	ar = mem;
	FUNC1(ar, sizeof(*ar));
	ar->k_ar.ar_magic = AUDIT_RECORD_MAGIC;
	FUNC4(&ar->k_ar.ar_starttime);

	/*
	 * Export the subject credential.
	 */
	cred = td->td_ucred;
	FUNC2(cred, &ar->k_ar.ar_subj_cred);
	ar->k_ar.ar_subj_ruid = cred->cr_ruid;
	ar->k_ar.ar_subj_rgid = cred->cr_rgid;
	ar->k_ar.ar_subj_egid = cred->cr_groups[0];
	ar->k_ar.ar_subj_auid = cred->cr_audit.ai_auid;
	ar->k_ar.ar_subj_asid = cred->cr_audit.ai_asid;
	ar->k_ar.ar_subj_pid = td->td_proc->p_pid;
	ar->k_ar.ar_subj_amask = cred->cr_audit.ai_mask;
	ar->k_ar.ar_subj_term_addr = cred->cr_audit.ai_termid;
	/*
	 * If this process is jailed, make sure we capture the name of the
	 * jail so we can use it to generate a zonename token when we covert
	 * this record to BSM.
	 */
	if (FUNC3(cred)) {
		pr = cred->cr_prison;
		(void) FUNC5(ar->k_ar.ar_jailname, pr->pr_name,
		    sizeof(ar->k_ar.ar_jailname));
	} else
		ar->k_ar.ar_jailname[0] = '\0';
	return (0);
}