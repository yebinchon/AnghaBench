
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct eaccess_args {int amode; int path; } ;


 int AT_EACCESS ;
 int AT_FDCWD ;
 int UIO_USERSPACE ;
 int kern_accessat (struct thread*,int ,int ,int ,int ,int ) ;

int
sys_eaccess(struct thread *td, struct eaccess_args *uap)
{

 return (kern_accessat(td, AT_FDCWD, uap->path, UIO_USERSPACE,
     AT_EACCESS, uap->amode));
}
