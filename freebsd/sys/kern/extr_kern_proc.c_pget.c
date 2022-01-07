
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {scalar_t__ p_pid; int p_flag; } ;
typedef scalar_t__ pid_t ;


 int EPERM ;
 int ESRCH ;
 int PGET_CANDEBUG ;
 int PGET_CANSEE ;
 int PGET_HOLD ;
 int PGET_ISCURRENT ;
 int PGET_NOTID ;
 int PGET_NOTINEXEC ;
 int PGET_NOTWEXIT ;
 scalar_t__ PID_MAX ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int P_INEXEC ;
 int P_WEXIT ;
 int _PHOLD (struct proc*) ;
 struct proc* curproc ;
 int curthread ;
 int p_candebug (int ,struct proc*) ;
 int p_cansee (int ,struct proc*) ;
 struct proc* pfind (scalar_t__) ;
 struct proc* pfind_any (scalar_t__) ;
 struct proc* pfind_tid (scalar_t__) ;

int
pget(pid_t pid, int flags, struct proc **pp)
{
 struct proc *p;
 int error;

 p = curproc;
 if (p->p_pid == pid) {
  PROC_LOCK(p);
 } else {
  p = ((void*)0);
  if (pid <= PID_MAX) {
   if ((flags & PGET_NOTWEXIT) == 0)
    p = pfind_any(pid);
   else
    p = pfind(pid);
  } else if ((flags & PGET_NOTID) == 0) {
   p = pfind_tid(pid);
  }
  if (p == ((void*)0))
   return (ESRCH);
  if ((flags & PGET_CANSEE) != 0) {
   error = p_cansee(curthread, p);
   if (error != 0)
    goto errout;
  }
 }
 if ((flags & PGET_CANDEBUG) != 0) {
  error = p_candebug(curthread, p);
  if (error != 0)
   goto errout;
 }
 if ((flags & PGET_ISCURRENT) != 0 && curproc != p) {
  error = EPERM;
  goto errout;
 }
 if ((flags & PGET_NOTWEXIT) != 0 && (p->p_flag & P_WEXIT) != 0) {
  error = ESRCH;
  goto errout;
 }
 if ((flags & PGET_NOTINEXEC) != 0 && (p->p_flag & P_INEXEC) != 0) {




  error = ESRCH;
  goto errout;
 }
 if ((flags & PGET_HOLD) != 0) {
  _PHOLD(p);
  PROC_UNLOCK(p);
 }
 *pp = p;
 return (0);
errout:
 PROC_UNLOCK(p);
 return (error);
}
