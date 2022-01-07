
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct thread {int td_pflags; TYPE_6__* td_ar; TYPE_5__* td_ucred; TYPE_3__* td_proc; } ;
struct au_mask {int dummy; } ;
typedef scalar_t__ au_id_t ;
typedef scalar_t__ au_event_t ;
typedef int au_class_t ;
struct TYPE_12__ {void* k_dtaudit_state; } ;
struct TYPE_10__ {scalar_t__ ai_auid; struct au_mask ai_mask; } ;
struct TYPE_11__ {TYPE_4__ cr_audit; } ;
struct TYPE_9__ {TYPE_2__* p_sysent; } ;
struct TYPE_8__ {unsigned short sv_size; TYPE_1__* sv_table; } ;
struct TYPE_7__ {scalar_t__ sy_auevent; } ;


 scalar_t__ AUE_NULL ;
 scalar_t__ AU_DEFAUDITID ;
 int AU_PRS_BOTH ;
 int KASSERT (int,char*) ;
 int PRIV_AUDIT_FAILSTOP ;
 int TDP_AUDITREC ;
 int au_event_class (scalar_t__) ;
 scalar_t__ au_preselect (scalar_t__,int ,struct au_mask*,int ) ;
 int audit_fail_cv ;
 scalar_t__ audit_in_failure ;
 int audit_mtx ;
 struct au_mask audit_nae_mask ;
 TYPE_6__* audit_new (scalar_t__,struct thread*) ;
 scalar_t__ audit_pipe_preselect (scalar_t__,scalar_t__,int ,int ,int ) ;
 int cv_wait (int *,int *) ;
 void* dtaudit_hook_preselect (scalar_t__,scalar_t__,int ) ;
 int panic (char*) ;
 scalar_t__ priv_check (struct thread*,int ) ;

void
audit_syscall_enter(unsigned short code, struct thread *td)
{
 struct au_mask *aumask;



 au_class_t class;
 au_event_t event;
 au_id_t auid;
 int record_needed;

 KASSERT(td->td_ar == ((void*)0), ("audit_syscall_enter: td->td_ar != NULL"));
 KASSERT((td->td_pflags & TDP_AUDITREC) == 0,
     ("audit_syscall_enter: TDP_AUDITREC set"));
 if (code >= td->td_proc->p_sysent->sv_size)
  return;

 event = td->td_proc->p_sysent->sv_table[code].sy_auevent;
 if (event == AUE_NULL)
  return;





 auid = td->td_ucred->cr_audit.ai_auid;
 if (auid == AU_DEFAUDITID)
  aumask = &audit_nae_mask;
 else
  aumask = &td->td_ucred->cr_audit.ai_mask;





 class = au_event_class(event);
 if (au_preselect(event, class, aumask, AU_PRS_BOTH)) {
  if (audit_in_failure &&
      priv_check(td, PRIV_AUDIT_FAILSTOP) != 0) {
   cv_wait(&audit_fail_cv, &audit_mtx);
   panic("audit_failing_stop: thread continued");
  }
  record_needed = 1;
 } else if (audit_pipe_preselect(auid, event, class, AU_PRS_BOTH, 0)) {
  record_needed = 1;
 } else {
  record_needed = 0;
 }
 if (record_needed) {
  td->td_ar = audit_new(event, td);
  if (td->td_ar != ((void*)0)) {
   td->td_pflags |= TDP_AUDITREC;



  }
 } else
  td->td_ar = ((void*)0);
}
