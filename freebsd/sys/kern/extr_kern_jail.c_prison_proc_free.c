
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prison {int pr_uref; int pr_mtx; int pr_task; int pr_ref; int pr_id; } ;


 int KASSERT (int,char*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_thread ;

void
prison_proc_free(struct prison *pr)
{

 mtx_lock(&pr->pr_mtx);
 KASSERT(pr->pr_uref > 0,
     ("Trying to kill a process in a dead prison (jid=%d)", pr->pr_id));
 if (pr->pr_uref > 1)
  pr->pr_uref--;
 else {





  pr->pr_ref++;
  mtx_unlock(&pr->pr_mtx);
  taskqueue_enqueue(taskqueue_thread, &pr->pr_task);
  return;
 }
 mtx_unlock(&pr->pr_mtx);
}
