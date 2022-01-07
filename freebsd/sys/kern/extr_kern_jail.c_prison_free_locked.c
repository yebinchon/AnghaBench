
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prison {int pr_ref; int pr_task; int pr_mtx; } ;


 int MA_OWNED ;
 int mtx_assert (int *,int ) ;
 int mtx_unlock (int *) ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_thread ;

void
prison_free_locked(struct prison *pr)
{
 int ref;

 mtx_assert(&pr->pr_mtx, MA_OWNED);
 ref = --pr->pr_ref;
 mtx_unlock(&pr->pr_mtx);
 if (ref == 0)
  taskqueue_enqueue(taskqueue_thread, &pr->pr_task);
}
