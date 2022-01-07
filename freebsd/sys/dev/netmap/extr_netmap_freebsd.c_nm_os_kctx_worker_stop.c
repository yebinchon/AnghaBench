
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nm_kctx {int * worker; scalar_t__ run; } ;


 int kthread_resume (int *) ;

void
nm_os_kctx_worker_stop(struct nm_kctx *nmk)
{
 if (!nmk->worker)
  return;


 nmk->run = 0;


 kthread_resume(nmk->worker);

 nmk->worker = ((void*)0);
}
