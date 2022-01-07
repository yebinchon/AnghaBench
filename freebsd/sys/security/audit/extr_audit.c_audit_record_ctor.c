
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ai_termid; int ai_mask; int ai_asid; int ai_auid; } ;
struct ucred {struct prison* cr_prison; TYPE_2__ cr_audit; int * cr_groups; int cr_rgid; int cr_ruid; } ;
struct thread {TYPE_1__* td_proc; struct ucred* td_ucred; } ;
struct prison {int pr_name; } ;
struct TYPE_6__ {char* ar_jailname; int ar_subj_term_addr; int ar_subj_amask; int ar_subj_pid; int ar_subj_asid; int ar_subj_auid; int ar_subj_egid; int ar_subj_rgid; int ar_subj_ruid; int ar_subj_cred; int ar_starttime; int ar_magic; } ;
struct kaudit_record {TYPE_3__ k_ar; } ;
struct TYPE_4__ {int p_pid; } ;


 int AUDIT_RECORD_MAGIC ;
 int KASSERT (int,char*) ;
 int bzero (struct kaudit_record*,int) ;
 int cru2x (struct ucred*,int *) ;
 scalar_t__ jailed (struct ucred*) ;
 int nanotime (int *) ;
 int strlcpy (char*,int ,int) ;

__attribute__((used)) static int
audit_record_ctor(void *mem, int size, void *arg, int flags)
{
 struct kaudit_record *ar;
 struct thread *td;
 struct ucred *cred;
 struct prison *pr;

 KASSERT(sizeof(*ar) == size, ("audit_record_ctor: wrong size"));

 td = arg;
 ar = mem;
 bzero(ar, sizeof(*ar));
 ar->k_ar.ar_magic = AUDIT_RECORD_MAGIC;
 nanotime(&ar->k_ar.ar_starttime);




 cred = td->td_ucred;
 cru2x(cred, &ar->k_ar.ar_subj_cred);
 ar->k_ar.ar_subj_ruid = cred->cr_ruid;
 ar->k_ar.ar_subj_rgid = cred->cr_rgid;
 ar->k_ar.ar_subj_egid = cred->cr_groups[0];
 ar->k_ar.ar_subj_auid = cred->cr_audit.ai_auid;
 ar->k_ar.ar_subj_asid = cred->cr_audit.ai_asid;
 ar->k_ar.ar_subj_pid = td->td_proc->p_pid;
 ar->k_ar.ar_subj_amask = cred->cr_audit.ai_mask;
 ar->k_ar.ar_subj_term_addr = cred->cr_audit.ai_termid;





 if (jailed(cred)) {
  pr = cred->cr_prison;
  (void) strlcpy(ar->k_ar.ar_jailname, pr->pr_name,
      sizeof(ar->k_ar.ar_jailname));
 } else
  ar->k_ar.ar_jailname[0] = '\0';
 return (0);
}
