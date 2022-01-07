
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;


 int alloc_unr (int ) ;
 int free_unr (int ,int) ;
 int kproc_create (int ,void*,struct proc**,int ,int ,char*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ soaio_idle ;
 int soaio_jobs_lock ;
 int soaio_kproc_loop ;
 int soaio_kproc_unr ;
 scalar_t__ soaio_max_procs ;
 scalar_t__ soaio_num_procs ;
 scalar_t__ soaio_queued ;
 scalar_t__ soaio_starting ;
 scalar_t__ soaio_target_procs ;

__attribute__((used)) static void
soaio_kproc_create(void *context, int pending)
{
 struct proc *p;
 int error, id;

 mtx_lock(&soaio_jobs_lock);
 for (;;) {
  if (soaio_num_procs < soaio_target_procs) {

  } else if (soaio_num_procs >= soaio_max_procs) {




   break;
  } else if (soaio_queued <= soaio_idle + soaio_starting) {




   break;
  }
  soaio_starting++;
  mtx_unlock(&soaio_jobs_lock);

  id = alloc_unr(soaio_kproc_unr);
  error = kproc_create(soaio_kproc_loop, (void *)(intptr_t)id,
      &p, 0, 0, "soaiod%d", id);
  if (error != 0) {
   free_unr(soaio_kproc_unr, id);
   mtx_lock(&soaio_jobs_lock);
   soaio_starting--;
   break;
  }

  mtx_lock(&soaio_jobs_lock);
  soaio_num_procs++;
 }
 mtx_unlock(&soaio_jobs_lock);
}
