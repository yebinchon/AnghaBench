
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct ucred {int dummy; } ;
struct thread {struct file* td_fpop; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int (* fo_ioctl ) (struct file*,int ,void*,struct ucred*,struct thread*) ;} ;


 int stub1 (struct file*,int ,void*,struct ucred*,struct thread*) ;
 TYPE_1__ vnops ;

__attribute__((used)) static int
devfs_ioctl_f(struct file *fp, u_long com, void *data, struct ucred *cred, struct thread *td)
{
 struct file *fpop;
 int error;

 fpop = td->td_fpop;
 td->td_fpop = fp;
 error = vnops.fo_ioctl(fp, com, data, cred, td);
 td->td_fpop = fpop;
 return (error);
}
