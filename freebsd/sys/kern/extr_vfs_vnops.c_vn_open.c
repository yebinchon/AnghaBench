
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int td_ucred; } ;
struct TYPE_2__ {struct thread* cn_thread; } ;
struct nameidata {TYPE_1__ ni_cnd; } ;
struct file {int dummy; } ;


 int vn_open_cred (struct nameidata*,int*,int,int ,int ,struct file*) ;

int
vn_open(struct nameidata *ndp, int *flagp, int cmode, struct file *fp)
{
 struct thread *td = ndp->ni_cnd.cn_thread;

 return (vn_open_cred(ndp, flagp, cmode, 0, td->td_ucred, fp));
}
