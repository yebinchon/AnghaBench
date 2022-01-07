
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct link_args {int link; int path; } ;


 int AT_FDCWD ;
 int FOLLOW ;
 int UIO_USERSPACE ;
 int kern_linkat (struct thread*,int ,int ,int ,int ,int ,int ) ;

int
sys_link(struct thread *td, struct link_args *uap)
{

 return (kern_linkat(td, AT_FDCWD, AT_FDCWD, uap->path, uap->link,
     UIO_USERSPACE, FOLLOW));
}
