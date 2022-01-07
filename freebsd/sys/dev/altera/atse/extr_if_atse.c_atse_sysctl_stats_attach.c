
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct atse_softc {int dummy; } ;
typedef int device_t ;
struct TYPE_5__ {int * descr; int * name; } ;
struct TYPE_4__ {int * descr; int * name; } ;


 int ATSE_RX_ERR_MAX ;
 int CTLFLAG_RD ;
 int CTLTYPE_UINT ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,int ,int ,int *,int,struct atse_softc*,int,int ,char*,int *) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 TYPE_1__* atse_mac_stats_regs ;
 TYPE_2__* atse_rx_err_stats_regs ;
 struct atse_softc* device_get_softc (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int nitems (TYPE_1__*) ;
 int sysctl_atse_mac_stats_proc ;
 int sysctl_atse_rx_err_stats_proc ;

__attribute__((used)) static void
atse_sysctl_stats_attach(device_t dev)
{
 struct sysctl_ctx_list *sctx;
 struct sysctl_oid *soid;
 struct atse_softc *sc;
 int i;

 sc = device_get_softc(dev);
 sctx = device_get_sysctl_ctx(dev);
 soid = device_get_sysctl_tree(dev);


 for (i = 0; i < nitems(atse_mac_stats_regs); i++) {
  if (atse_mac_stats_regs[i].name == ((void*)0) ||
      atse_mac_stats_regs[i].descr == ((void*)0)) {
   continue;
  }

  SYSCTL_ADD_PROC(sctx, SYSCTL_CHILDREN(soid), OID_AUTO,
      atse_mac_stats_regs[i].name, CTLTYPE_UINT|CTLFLAG_RD,
      sc, i, sysctl_atse_mac_stats_proc, "IU",
      atse_mac_stats_regs[i].descr);
 }


 for (i = 0; i < ATSE_RX_ERR_MAX; i++) {
  if (atse_rx_err_stats_regs[i].name == ((void*)0) ||
      atse_rx_err_stats_regs[i].descr == ((void*)0)) {
   continue;
  }

  SYSCTL_ADD_PROC(sctx, SYSCTL_CHILDREN(soid), OID_AUTO,
      atse_rx_err_stats_regs[i].name, CTLTYPE_UINT|CTLFLAG_RD,
      sc, i, sysctl_atse_rx_err_stats_proc, "IU",
      atse_rx_err_stats_regs[i].descr);
 }
}
