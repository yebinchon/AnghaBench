
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef uintptr_t uint32_t ;
typedef uintptr_t u_long ;
struct thread {int td_proc; } ;


 int EFAULT ;
 int SV_ILP32 ;
 scalar_t__ SV_PROC_FLAG (int ,int ) ;
 int fueword (void*,uintptr_t*) ;
 int fueword32 (void*,uintptr_t*) ;

__attribute__((used)) static int
umtx_read_uptr(struct thread *td, uintptr_t ptr, uintptr_t *res)
{
 u_long res1;



 int error;
 {
  error = fueword((void *)ptr, &res1);
 }
 if (error == 0)
  *res = res1;
 else
  error = EFAULT;
 return (error);
}
