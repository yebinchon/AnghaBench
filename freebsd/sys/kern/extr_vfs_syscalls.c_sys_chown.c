
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct chown_args {int gid; int uid; int path; } ;


 int AT_FDCWD ;
 int UIO_USERSPACE ;
 int kern_fchownat (struct thread*,int ,int ,int ,int ,int ,int ) ;

int
sys_chown(struct thread *td, struct chown_args *uap)
{

 return (kern_fchownat(td, AT_FDCWD, uap->path, UIO_USERSPACE, uap->uid,
     uap->gid, 0));
}
