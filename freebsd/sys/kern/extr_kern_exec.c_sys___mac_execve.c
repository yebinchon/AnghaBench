
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmspace {int dummy; } ;
struct thread {int dummy; } ;
struct image_args {int dummy; } ;
struct __mac_execve_args {int mac_p; int envv; int argv; int fname; } ;


 int ENOSYS ;
 int UIO_USERSPACE ;
 int exec_copyin_args (struct image_args*,int ,int ,int ,int ) ;
 int kern_execve (struct thread*,struct image_args*,int ) ;
 int post_execve (struct thread*,int,struct vmspace*) ;
 int pre_execve (struct thread*,struct vmspace**) ;

int
sys___mac_execve(struct thread *td, struct __mac_execve_args *uap)
{
 return (ENOSYS);

}
