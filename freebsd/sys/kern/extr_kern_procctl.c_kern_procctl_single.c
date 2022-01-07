
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct proc {int dummy; } ;


 int EINVAL ;
 int MA_OWNED ;


 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int aslr_ctl (struct thread*,struct proc*,int) ;
 int aslr_status (struct thread*,struct proc*,void*) ;
 int protect_set (struct thread*,struct proc*,int) ;
 int protmax_ctl (struct thread*,struct proc*,int) ;
 int protmax_status (struct thread*,struct proc*,void*) ;
 int reap_acquire (struct thread*,struct proc*) ;
 int reap_getpids (struct thread*,struct proc*,void*) ;
 int reap_kill (struct thread*,struct proc*,void*) ;
 int reap_release (struct thread*,struct proc*) ;
 int reap_status (struct thread*,struct proc*,void*) ;
 int stackgap_ctl (struct thread*,struct proc*,int) ;
 int stackgap_status (struct thread*,struct proc*,void*) ;
 int trace_ctl (struct thread*,struct proc*,int) ;
 int trace_status (struct thread*,struct proc*,void*) ;
 int trapcap_ctl (struct thread*,struct proc*,int) ;
 int trapcap_status (struct thread*,struct proc*,void*) ;

__attribute__((used)) static int
kern_procctl_single(struct thread *td, struct proc *p, int com, void *data)
{

 PROC_LOCK_ASSERT(p, MA_OWNED);
 switch (com) {
 case 143:
  return (aslr_ctl(td, p, *(int *)data));
 case 142:
  return (aslr_status(td, p, data));
 case 134:
  return (protect_set(td, p, *(int *)data));
 case 141:
  return (protmax_ctl(td, p, *(int *)data));
 case 140:
  return (protmax_status(td, p, data));
 case 133:
  return (stackgap_ctl(td, p, *(int *)data));
 case 132:
  return (stackgap_status(td, p, data));
 case 139:
  return (reap_acquire(td, p));
 case 136:
  return (reap_release(td, p));
 case 135:
  return (reap_status(td, p, data));
 case 138:
  return (reap_getpids(td, p, data));
 case 137:
  return (reap_kill(td, p, data));
 case 131:
  return (trace_ctl(td, p, *(int *)data));
 case 130:
  return (trace_status(td, p, data));
 case 129:
  return (trapcap_ctl(td, p, *(int *)data));
 case 128:
  return (trapcap_status(td, p, data));
 default:
  return (EINVAL);
 }
}
