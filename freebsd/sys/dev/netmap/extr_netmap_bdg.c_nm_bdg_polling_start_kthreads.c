
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nm_bdg_polling_state {int stopped; int ncpus; struct nm_bdg_kthread* kthreads; } ;
struct nm_bdg_kthread {int nmk; } ;


 int EFAULT ;
 int nm_os_kctx_worker_start (int ) ;
 int nm_os_kctx_worker_stop (int ) ;
 int nm_prerr (char*,...) ;

__attribute__((used)) static int
nm_bdg_polling_start_kthreads(struct nm_bdg_polling_state *bps)
{
 int error, i, j;

 if (!bps) {
  nm_prerr("polling is not configured");
  return EFAULT;
 }
 bps->stopped = 0;

 for (i = 0; i < bps->ncpus; i++) {
  struct nm_bdg_kthread *t = bps->kthreads + i;
  error = nm_os_kctx_worker_start(t->nmk);
  if (error) {
   nm_prerr("error in nm_kthread_start(): %d", error);
   goto cleanup;
  }
 }
 return 0;

cleanup:
 for (j = 0; j < i; j++) {
  struct nm_bdg_kthread *t = bps->kthreads + i;
  nm_os_kctx_worker_stop(t->nmk);
 }
 bps->stopped = 1;
 return error;
}
