
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct stat {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int (* fo_stat ) (struct file*,struct stat*,struct ucred*,struct thread*) ;} ;


 int stub1 (struct file*,struct stat*,struct ucred*,struct thread*) ;
 TYPE_1__ vnops ;

__attribute__((used)) static int
devfs_stat_f(struct file *fp, struct stat *sb, struct ucred *cred, struct thread *td)
{

 return (vnops.fo_stat(fp, sb, cred, td));
}
