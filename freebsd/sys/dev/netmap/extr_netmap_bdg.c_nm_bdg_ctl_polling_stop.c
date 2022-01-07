
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nm_bdg_polling_state {int configured; } ;
struct netmap_bwrap_adapter {int hwna; struct nm_bdg_polling_state* na_polling_state; } ;
struct netmap_adapter {int dummy; } ;


 int EFAULT ;
 int nm_bdg_polling_stop_delete_kthreads (struct nm_bdg_polling_state*) ;
 int nm_os_free (struct nm_bdg_polling_state*) ;
 int nm_prerr (char*) ;
 int nma_intr_enable (int ,int) ;

__attribute__((used)) static int
nm_bdg_ctl_polling_stop(struct netmap_adapter *na)
{
 struct netmap_bwrap_adapter *bna = (struct netmap_bwrap_adapter *)na;
 struct nm_bdg_polling_state *bps;

 if (!bna->na_polling_state) {
  nm_prerr("ERROR adapter is not in polling mode");
  return EFAULT;
 }
 bps = bna->na_polling_state;
 nm_bdg_polling_stop_delete_kthreads(bna->na_polling_state);
 bps->configured = 0;
 nm_os_free(bps);
 bna->na_polling_state = ((void*)0);

 nma_intr_enable(bna->hwna, 1);
 return 0;
}
