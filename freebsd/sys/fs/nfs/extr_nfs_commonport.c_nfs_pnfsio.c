
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int task_fn_t ;
struct taskqueue {int dummy; } ;
struct pnfsio {int inprog; int tsk; } ;


 int ENOMEM ;
 int EPERM ;
 int M_WAITOK ;
 int TASK_INIT (int *,int ,int *,void*) ;
 int mp_ncpus ;
 int nfs_pnfsiothreads ;
 struct taskqueue* taskqueue_create (char*,int ,int ,struct taskqueue**) ;
 int taskqueue_enqueue (struct taskqueue*,int *) ;
 int taskqueue_free (struct taskqueue*) ;
 int taskqueue_start_threads (struct taskqueue**,int,int ,char*) ;
 int taskqueue_thread_enqueue ;

int
nfs_pnfsio(task_fn_t *func, void *context)
{
 struct pnfsio *pio;
 int ret;
 static struct taskqueue *pnfsioq = ((void*)0);

 pio = (struct pnfsio *)context;
 if (pnfsioq == ((void*)0)) {
  if (nfs_pnfsiothreads == 0)
   return (EPERM);
  if (nfs_pnfsiothreads < 0)
   nfs_pnfsiothreads = mp_ncpus * 4;
  pnfsioq = taskqueue_create("pnfsioq", M_WAITOK,
      taskqueue_thread_enqueue, &pnfsioq);
  if (pnfsioq == ((void*)0))
   return (ENOMEM);
  ret = taskqueue_start_threads(&pnfsioq, nfs_pnfsiothreads,
      0, "pnfsiot");
  if (ret != 0) {
   taskqueue_free(pnfsioq);
   pnfsioq = ((void*)0);
   return (ret);
  }
 }
 pio->inprog = 1;
 TASK_INIT(&pio->tsk, 0, func, context);
 ret = taskqueue_enqueue(pnfsioq, &pio->tsk);
 if (ret != 0)
  pio->inprog = 0;
 return (ret);
}
