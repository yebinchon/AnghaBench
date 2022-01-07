
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct au_mask {int dummy; } ;
struct TYPE_3__ {int ar_errno; int ar_retval; scalar_t__ ar_subj_auid; int ar_event; int ar_arg_svipc_which; int ar_arg_cmd; int ar_valid_arg; int ar_arg_ctlname; int ar_arg_fflags; struct au_mask ar_subj_amask; int ar_endtime; } ;
struct kaudit_record {int k_ar_commit; TYPE_1__ k_ar; } ;
typedef scalar_t__ au_id_t ;
typedef int au_event_t ;
typedef int au_class_t ;
struct TYPE_4__ {scalar_t__ aq_hiwater; } ;


 int ARG_IS_VALID (struct kaudit_record*,int ) ;
 int ARG_SVIPC_WHICH ;
 int AR_COMMIT_KERNEL ;
 int AR_PRESELECT_DTRACE ;
 int AR_PRESELECT_PIPE ;
 int AR_PRESELECT_TRAIL ;
 int AR_PRESELECT_USER_PIPE ;
 int AR_PRESELECT_USER_TRAIL ;







 scalar_t__ AU_DEFAUDITID ;
 int AU_PRS_FAILURE ;
 int AU_PRS_SUCCESS ;
 int TAILQ_INSERT_TAIL (int *,struct kaudit_record*,int ) ;
 int au_event_class (int) ;
 scalar_t__ au_preselect (int,int ,struct au_mask*,int) ;
 int audit_ctlname_to_sysctlevent (int ,int ) ;
 int audit_flags_and_error_to_openatevent (int ,int) ;
 int audit_flags_and_error_to_openevent (int ,int) ;
 int audit_free (struct kaudit_record*) ;
 int audit_msgsys_to_event (int ) ;
 int audit_mtx ;
 struct au_mask audit_nae_mask ;
 scalar_t__ audit_pipe_preselect (scalar_t__,int,int ,int,int) ;
 int audit_pre_q_len ;
 int audit_q ;
 scalar_t__ audit_q_len ;
 TYPE_2__ audit_qctrl ;
 int audit_semsys_to_event (int ) ;
 int audit_shmsys_to_event (int ) ;
 int audit_trail_enabled ;
 scalar_t__ audit_trail_suspended ;
 int audit_watermark_cv ;
 int audit_worker_cv ;
 int auditon_command_event (int ) ;
 int cv_signal (int *) ;
 int cv_wait (int *,int *) ;
 scalar_t__ dtaudit_hook_commit (struct kaudit_record*,scalar_t__,int,int ,int) ;
 int k_q ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nanotime (int *) ;

void
audit_commit(struct kaudit_record *ar, int error, int retval)
{
 au_event_t event;
 au_class_t class;
 au_id_t auid;
 int sorf;
 struct au_mask *aumask;

 if (ar == ((void*)0))
  return;

 ar->k_ar.ar_errno = error;
 ar->k_ar.ar_retval = retval;
 nanotime(&ar->k_ar.ar_endtime);





 if (ar->k_ar.ar_subj_auid == AU_DEFAUDITID)
  aumask = &audit_nae_mask;
 else
  aumask = &ar->k_ar.ar_subj_amask;

 if (error)
  sorf = AU_PRS_FAILURE;
 else
  sorf = AU_PRS_SUCCESS;






 switch(ar->k_ar.ar_event) {
 case 131:
  ar->k_ar.ar_event = audit_flags_and_error_to_openevent(
      ar->k_ar.ar_arg_fflags, error);
  break;

 case 132:
  ar->k_ar.ar_event = audit_flags_and_error_to_openatevent(
      ar->k_ar.ar_arg_fflags, error);
  break;

 case 128:
  ar->k_ar.ar_event = audit_ctlname_to_sysctlevent(
      ar->k_ar.ar_arg_ctlname, ar->k_ar.ar_valid_arg);
  break;

 case 134:

  ar->k_ar.ar_event = auditon_command_event(ar->k_ar.ar_arg_cmd);
  break;

 case 133:
  if (ARG_IS_VALID(ar, ARG_SVIPC_WHICH))
   ar->k_ar.ar_event =
       audit_msgsys_to_event(ar->k_ar.ar_arg_svipc_which);
  break;

 case 130:
  if (ARG_IS_VALID(ar, ARG_SVIPC_WHICH))
   ar->k_ar.ar_event =
       audit_semsys_to_event(ar->k_ar.ar_arg_svipc_which);
  break;

 case 129:
  if (ARG_IS_VALID(ar, ARG_SVIPC_WHICH))
   ar->k_ar.ar_event =
       audit_shmsys_to_event(ar->k_ar.ar_arg_svipc_which);
  break;
 }

 auid = ar->k_ar.ar_subj_auid;
 event = ar->k_ar.ar_event;
 class = au_event_class(event);

 ar->k_ar_commit |= AR_COMMIT_KERNEL;
 if (au_preselect(event, class, aumask, sorf) != 0)
  ar->k_ar_commit |= AR_PRESELECT_TRAIL;
 if (audit_pipe_preselect(auid, event, class, sorf,
     ar->k_ar_commit & AR_PRESELECT_TRAIL) != 0)
  ar->k_ar_commit |= AR_PRESELECT_PIPE;
 if ((ar->k_ar_commit & (AR_PRESELECT_TRAIL | AR_PRESELECT_PIPE |
     AR_PRESELECT_USER_TRAIL | AR_PRESELECT_USER_PIPE |
     AR_PRESELECT_DTRACE)) == 0) {
  mtx_lock(&audit_mtx);
  audit_pre_q_len--;
  mtx_unlock(&audit_mtx);
  audit_free(ar);
  return;
 }
 mtx_lock(&audit_mtx);
 if (audit_trail_suspended || !audit_trail_enabled) {
  audit_pre_q_len--;
  mtx_unlock(&audit_mtx);
  audit_free(ar);
  return;
 }





 while (audit_q_len >= audit_qctrl.aq_hiwater)
  cv_wait(&audit_watermark_cv, &audit_mtx);

 TAILQ_INSERT_TAIL(&audit_q, ar, k_q);
 audit_q_len++;
 audit_pre_q_len--;
 cv_signal(&audit_worker_cv);
 mtx_unlock(&audit_mtx);
}
