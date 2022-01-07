
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ucred {scalar_t__ cr_ruid; scalar_t__ cr_uid; } ;
struct proc {int p_flag; TYPE_1__* p_ucred; } ;
struct TYPE_4__ {scalar_t__ cr_ruid; scalar_t__ cr_svuid; } ;


 int MA_OWNED ;
 int PRIV_SIGNAL_DIFFCRED ;
 int PRIV_SIGNAL_SUGID ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int P_SUGID ;
 scalar_t__ conservative_signals ;
 int cr_canseeothergids (struct ucred*,TYPE_1__*) ;
 int cr_canseeotheruids (struct ucred*,TYPE_1__*) ;
 int mac_proc_check_signal (struct ucred*,struct proc*,int) ;
 int prison_check (struct ucred*,TYPE_1__*) ;
 int priv_check_cred (struct ucred*,int ) ;

int
cr_cansignal(struct ucred *cred, struct proc *proc, int signum)
{
 int error;

 PROC_LOCK_ASSERT(proc, MA_OWNED);




 error = prison_check(cred, proc->p_ucred);
 if (error)
  return (error);




 if ((error = cr_canseeotheruids(cred, proc->p_ucred)))
  return (error);
 if ((error = cr_canseeothergids(cred, proc->p_ucred)))
  return (error);






 if (conservative_signals && (proc->p_flag & P_SUGID)) {
  switch (signum) {
  case 0:
  case 135:
  case 136:
  case 133:
  case 138:
  case 134:
  case 131:
  case 130:
  case 132:
  case 137:
  case 129:
  case 128:




   break;
  default:

   error = priv_check_cred(cred, PRIV_SIGNAL_SUGID);
   if (error)
    return (error);
  }
 }





 if (cred->cr_ruid != proc->p_ucred->cr_ruid &&
     cred->cr_ruid != proc->p_ucred->cr_svuid &&
     cred->cr_uid != proc->p_ucred->cr_ruid &&
     cred->cr_uid != proc->p_ucred->cr_svuid) {
  error = priv_check_cred(cred, PRIV_SIGNAL_DIFFCRED);
  if (error)
   return (error);
 }

 return (0);
}
