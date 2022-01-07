
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct proc {int dummy; } ;
struct TYPE_3__ {int type; TYPE_2__* user_td; } ;
struct nm_kctx {int run; int * worker; TYPE_1__ worker_ctx; scalar_t__ attach_user; } ;
struct TYPE_4__ {struct proc* td_proc; } ;


 int EBUSY ;
 int EOPNOTSUPP ;
 int RFNOWAIT ;
 TYPE_2__* curthread ;
 int kthread_add (int ,struct nm_kctx*,struct proc*,int **,int ,int ,char*,int ) ;
 int nm_kctx_worker ;
 int nm_prerr (char*,int) ;
 int nm_prinf (char*,int *) ;

int
nm_os_kctx_worker_start(struct nm_kctx *nmk)
{
 struct proc *p = ((void*)0);
 int error = 0;




 return EOPNOTSUPP;

 if (nmk->worker)
  return EBUSY;


 if (nmk->attach_user) {
  nmk->worker_ctx.user_td = curthread;
  p = curthread->td_proc;
 }


 nmk->run = 1;

 if((error = kthread_add(nm_kctx_worker, nmk, p,
   &nmk->worker, RFNOWAIT , 0, "nm-kthread-%ld",
   nmk->worker_ctx.type))) {
  goto err;
 }

 nm_prinf("nm_kthread started td %p", nmk->worker);

 return 0;
err:
 nm_prerr("nm_kthread start failed err %d", error);
 nmk->worker = ((void*)0);
 return error;
}
