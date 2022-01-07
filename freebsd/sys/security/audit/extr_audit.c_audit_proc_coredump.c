
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct au_mask {int dummy; } ;
struct TYPE_4__ {scalar_t__ ai_auid; struct au_mask ai_mask; } ;
struct ucred {TYPE_1__ cr_audit; } ;
struct thread {TYPE_3__* td_proc; struct ucred* td_ucred; } ;
struct TYPE_5__ {char* ar_arg_upath1; int ar_arg_signum; } ;
struct kaudit_record {TYPE_2__ k_ar; } ;
typedef scalar_t__ au_id_t ;
typedef int au_class_t ;
struct TYPE_6__ {int p_sig; } ;


 int ARG_SET_VALID (struct kaudit_record*,int ) ;
 int ARG_SIGNUM ;
 int ARG_UPATH1 ;
 int AT_FDCWD ;
 int AUE_CORE ;
 scalar_t__ AU_DEFAUDITID ;
 int AU_PRS_FAILURE ;
 int AU_PRS_SUCCESS ;
 int MAXPATHLEN ;
 int M_AUDITPATH ;
 int M_WAITOK ;
 int au_event_class (int ) ;
 scalar_t__ au_preselect (int ,int ,struct au_mask*,int) ;
 int audit_canon_path (struct thread*,int ,char*,char*) ;
 int audit_commit (struct kaudit_record*,int,int) ;
 struct au_mask audit_nae_mask ;
 struct kaudit_record* audit_new (int ,struct thread*) ;
 scalar_t__ audit_pipe_preselect (scalar_t__,int ,int ,int,int ) ;
 char* malloc (int ,int ,int ) ;

void
audit_proc_coredump(struct thread *td, char *path, int errcode)
{
 struct kaudit_record *ar;
 struct au_mask *aumask;
 struct ucred *cred;
 au_class_t class;
 int ret, sorf;
 char **pathp;
 au_id_t auid;

 ret = 0;




 cred = td->td_ucred;
 auid = cred->cr_audit.ai_auid;
 if (auid == AU_DEFAUDITID)
  aumask = &audit_nae_mask;
 else
  aumask = &cred->cr_audit.ai_mask;




 if (errcode != 0)
  sorf = AU_PRS_FAILURE;
 else
  sorf = AU_PRS_SUCCESS;
 class = au_event_class(AUE_CORE);
 if (au_preselect(AUE_CORE, class, aumask, sorf) == 0 &&
     audit_pipe_preselect(auid, AUE_CORE, class, sorf, 0) == 0)
  return;






 ar = audit_new(AUE_CORE, td);
 if (ar == ((void*)0))
  return;
 if (path != ((void*)0)) {
  pathp = &ar->k_ar.ar_arg_upath1;
  *pathp = malloc(MAXPATHLEN, M_AUDITPATH, M_WAITOK);
  audit_canon_path(td, AT_FDCWD, path, *pathp);
  ARG_SET_VALID(ar, ARG_UPATH1);
 }
 ar->k_ar.ar_arg_signum = td->td_proc->p_sig;
 ARG_SET_VALID(ar, ARG_SIGNUM);
 if (errcode != 0)
  ret = 1;
 audit_commit(ar, errcode, ret);
}
