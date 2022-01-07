
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;


 int RFNOWAIT ;
 int aio_daemon ;
 int aio_job_mtx ;
 int aio_newproc_sem ;
 int aiod_unr ;
 int alloc_unr (int ) ;
 int free_unr (int ,int) ;
 int kproc_create (int ,void*,struct proc**,int ,int ,char*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int num_aio_procs ;
 int sema_wait (int *) ;

__attribute__((used)) static int
aio_newproc(int *start)
{
 int error;
 struct proc *p;
 int id;

 id = alloc_unr(aiod_unr);
 error = kproc_create(aio_daemon, (void *)(intptr_t)id, &p,
  RFNOWAIT, 0, "aiod%d", id);
 if (error == 0) {



  sema_wait(&aio_newproc_sem);
  mtx_lock(&aio_job_mtx);
  num_aio_procs++;
  if (start != ((void*)0))
   (*start)--;
  mtx_unlock(&aio_job_mtx);
 } else {
  free_unr(aiod_unr, id);
 }
 return (error);
}
