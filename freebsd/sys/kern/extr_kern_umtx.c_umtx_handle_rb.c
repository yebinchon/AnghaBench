
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umutex {int m_flags; int m_owner; } ;
struct thread {scalar_t__ td_proc; int td_tid; } ;
typedef int m ;


 int EINVAL ;
 int KASSERT (int,char*) ;
 int UMUTEX_CONTESTED ;
 int UMUTEX_ROBUST ;
 int copyin (void*,struct umutex*,int) ;
 scalar_t__ curproc ;
 int do_unlock_umutex (struct thread*,struct umutex*,int) ;
 int umtx_read_rb_list (struct thread*,struct umutex*,uintptr_t*) ;

__attribute__((used)) static int
umtx_handle_rb(struct thread *td, uintptr_t rbp, uintptr_t *rb_list, bool inact)
{
 struct umutex m;
 int error;

 KASSERT(td->td_proc == curproc, ("need current vmspace"));
 error = copyin((void *)rbp, &m, sizeof(m));
 if (error != 0)
  return (error);
 if (rb_list != ((void*)0))
  umtx_read_rb_list(td, &m, rb_list);
 if ((m.m_flags & UMUTEX_ROBUST) == 0)
  return (EINVAL);
 if ((m.m_owner & ~UMUTEX_CONTESTED) != td->td_tid)

  return (inact ? 0 : EINVAL);
 return (do_unlock_umutex(td, (struct umutex *)rbp, 1));
}
