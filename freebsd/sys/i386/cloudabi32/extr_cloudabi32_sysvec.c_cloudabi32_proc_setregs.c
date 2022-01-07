
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct image_params {int dummy; } ;


 int TO_PTR (unsigned long) ;
 int cpu_set_user_tls (struct thread*,int ) ;
 int exec_setregs (struct thread*,struct image_params*,unsigned long) ;

__attribute__((used)) static void
cloudabi32_proc_setregs(struct thread *td, struct image_params *imgp,
    unsigned long stack)
{

 exec_setregs(td, imgp, stack);
 (void)cpu_set_user_tls(td, TO_PTR(stack));
}
