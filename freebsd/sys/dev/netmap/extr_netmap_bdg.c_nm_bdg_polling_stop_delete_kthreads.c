
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nm_bdg_polling_state {int ncpus; int stopped; struct nm_bdg_kthread* kthreads; } ;
struct nm_bdg_kthread {int nmk; } ;


 int nm_os_kctx_destroy (int ) ;
 int nm_os_kctx_worker_stop (int ) ;

__attribute__((used)) static void
nm_bdg_polling_stop_delete_kthreads(struct nm_bdg_polling_state *bps)
{
 int i;

 if (!bps)
  return;

 for (i = 0; i < bps->ncpus; i++) {
  struct nm_bdg_kthread *t = bps->kthreads + i;
  nm_os_kctx_worker_stop(t->nmk);
  nm_os_kctx_destroy(t->nmk);
 }
 bps->stopped = 1;
}
