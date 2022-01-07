
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nm_kctx_ctx {int worker_private; int (* worker_fn ) (int ) ;scalar_t__ user_td; } ;
struct nm_kctx {scalar_t__ affinity; scalar_t__ run; struct nm_kctx_ctx worker_ctx; } ;


 int PROC_LOCK (int ) ;
 int PROC_UNLOCK (int ) ;
 int curproc ;
 int curthread ;
 int kthread_exit () ;
 int kthread_suspend_check () ;
 int sched_bind (int ,scalar_t__) ;
 int stub1 (int ) ;
 int thread_lock (int ) ;
 int thread_suspend_check (int ) ;
 int thread_unlock (int ) ;

__attribute__((used)) static void
nm_kctx_worker(void *data)
{
 struct nm_kctx *nmk = data;
 struct nm_kctx_ctx *ctx = &nmk->worker_ctx;

 if (nmk->affinity >= 0) {
  thread_lock(curthread);
  sched_bind(curthread, nmk->affinity);
  thread_unlock(curthread);
 }

 while (nmk->run) {




  if (ctx->user_td) {
   PROC_LOCK(curproc);
   thread_suspend_check(0);
   PROC_UNLOCK(curproc);
  } else {
   kthread_suspend_check();
  }


  ctx->worker_fn(ctx->worker_private);
 }

 kthread_exit();
}
