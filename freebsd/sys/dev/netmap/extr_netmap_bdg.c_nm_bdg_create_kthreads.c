
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nm_kctx_cfg {int type; struct nm_bdg_kthread* worker_private; int worker_fn; } ;
struct nm_bdg_polling_state {int ncpus; scalar_t__ mode; int cpu_from; int qfirst; int qlast; struct nm_bdg_kthread* kthreads; } ;
struct nm_bdg_kthread {int qfirst; int qlast; int * nmk; struct nm_bdg_polling_state* bps; } ;
typedef int kcfg ;


 int EFAULT ;
 int ENOMEM ;
 scalar_t__ NETMAP_POLLING_MODE_SINGLE_CPU ;
 int bzero (struct nm_kctx_cfg*,int) ;
 int netmap_bwrap_polling ;
 scalar_t__ netmap_verbose ;
 int nm_os_free (struct nm_bdg_kthread*) ;
 int * nm_os_kctx_create (struct nm_kctx_cfg*,int *) ;
 int nm_os_kctx_destroy (int *) ;
 int nm_os_kctx_worker_setaff (int *,int) ;
 struct nm_bdg_kthread* nm_os_malloc (int) ;
 int nm_prinf (char*,int,int,int,int) ;

__attribute__((used)) static int
nm_bdg_create_kthreads(struct nm_bdg_polling_state *bps)
{
 struct nm_kctx_cfg kcfg;
 int i, j;

 bps->kthreads = nm_os_malloc(sizeof(struct nm_bdg_kthread) * bps->ncpus);
 if (bps->kthreads == ((void*)0))
  return ENOMEM;

 bzero(&kcfg, sizeof(kcfg));
 kcfg.worker_fn = netmap_bwrap_polling;
 for (i = 0; i < bps->ncpus; i++) {
  struct nm_bdg_kthread *t = bps->kthreads + i;
  int all = (bps->ncpus == 1 &&
   bps->mode == NETMAP_POLLING_MODE_SINGLE_CPU);
  int affinity = bps->cpu_from + i;

  t->bps = bps;
  t->qfirst = all ? bps->qfirst : affinity;
  t->qlast = all ? bps->qlast : t->qfirst + 1;
  if (netmap_verbose)
   nm_prinf("kthread %d a:%u qf:%u ql:%u", i, affinity, t->qfirst,
    t->qlast);

  kcfg.type = i;
  kcfg.worker_private = t;
  t->nmk = nm_os_kctx_create(&kcfg, ((void*)0));
  if (t->nmk == ((void*)0)) {
   goto cleanup;
  }
  nm_os_kctx_worker_setaff(t->nmk, affinity);
 }
 return 0;

cleanup:
 for (j = 0; j < i; j++) {
  struct nm_bdg_kthread *t = bps->kthreads + i;
  nm_os_kctx_destroy(t->nmk);
 }
 nm_os_free(bps->kthreads);
 return EFAULT;
}
