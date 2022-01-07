
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct umutex {int m_flags; } ;
struct thread {int dummy; } ;


 int EFAULT ;
 int EINVAL ;


 int do_unlock_normal (struct thread*,struct umutex*,int,int) ;
 int do_unlock_pi (struct thread*,struct umutex*,int,int) ;
 int do_unlock_pp (struct thread*,struct umutex*,int,int) ;
 int fueword32 (int *,int*) ;

__attribute__((used)) static int
do_unlock_umutex(struct thread *td, struct umutex *m, bool rb)
{
 uint32_t flags;
 int error;

 error = fueword32(&m->m_flags, &flags);
 if (error == -1)
  return (EFAULT);

 switch (flags & (129 | 128)) {
 case 0:
  return (do_unlock_normal(td, m, flags, rb));
 case 129:
  return (do_unlock_pi(td, m, flags, rb));
 case 128:
  return (do_unlock_pp(td, m, flags, rb));
 }

 return (EINVAL);
}
