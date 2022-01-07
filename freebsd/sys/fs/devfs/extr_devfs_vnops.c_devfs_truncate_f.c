
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct file {int dummy; } ;
typedef int off_t ;
struct TYPE_2__ {int (* fo_truncate ) (struct file*,int ,struct ucred*,struct thread*) ;} ;


 int stub1 (struct file*,int ,struct ucred*,struct thread*) ;
 TYPE_1__ vnops ;

__attribute__((used)) static int
devfs_truncate_f(struct file *fp, off_t length, struct ucred *cred, struct thread *td)
{

 return (vnops.fo_truncate(fp, length, cred, td));
}
