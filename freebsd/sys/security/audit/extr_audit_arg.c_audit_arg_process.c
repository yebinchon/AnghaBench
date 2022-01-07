
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ai_termid; int ai_asid; int ai_auid; } ;
struct ucred {TYPE_1__ cr_audit; int cr_rgid; int cr_ruid; int * cr_groups; int cr_uid; } ;
struct proc {int p_pid; struct ucred* p_ucred; } ;
struct TYPE_4__ {int ar_arg_pid; int ar_arg_termid_addr; int ar_arg_asid; int ar_arg_rgid; int ar_arg_ruid; int ar_arg_egid; int ar_arg_euid; int ar_arg_auid; } ;
struct kaudit_record {TYPE_2__ k_ar; } ;


 int ARG_ASID ;
 int ARG_AUID ;
 int ARG_EGID ;
 int ARG_EUID ;
 int ARG_PID ;
 int ARG_PROCESS ;
 int ARG_RGID ;
 int ARG_RUID ;
 int ARG_SET_VALID (struct kaudit_record*,int) ;
 int ARG_TERMID_ADDR ;
 int KASSERT (int ,char*) ;
 int MA_OWNED ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 struct kaudit_record* currecord () ;

void
audit_arg_process(struct proc *p)
{
 struct kaudit_record *ar;
 struct ucred *cred;

 KASSERT(p != ((void*)0), ("audit_arg_process: p == NULL"));

 PROC_LOCK_ASSERT(p, MA_OWNED);

 ar = currecord();
 if (ar == ((void*)0))
  return;

 cred = p->p_ucred;
 ar->k_ar.ar_arg_auid = cred->cr_audit.ai_auid;
 ar->k_ar.ar_arg_euid = cred->cr_uid;
 ar->k_ar.ar_arg_egid = cred->cr_groups[0];
 ar->k_ar.ar_arg_ruid = cred->cr_ruid;
 ar->k_ar.ar_arg_rgid = cred->cr_rgid;
 ar->k_ar.ar_arg_asid = cred->cr_audit.ai_asid;
 ar->k_ar.ar_arg_termid_addr = cred->cr_audit.ai_termid;
 ar->k_ar.ar_arg_pid = p->p_pid;
 ARG_SET_VALID(ar, ARG_AUID | ARG_EUID | ARG_EGID | ARG_RUID |
     ARG_RGID | ARG_ASID | ARG_TERMID_ADDR | ARG_PID | ARG_PROCESS);
}
