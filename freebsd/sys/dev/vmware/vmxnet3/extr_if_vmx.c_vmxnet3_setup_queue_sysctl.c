
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmxnet3_softc {int * vmx_rxq; int * vmx_txq; TYPE_1__* vmx_scctx; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
typedef TYPE_1__* if_softc_ctx_t ;
struct TYPE_2__ {int isc_ntxqsets; int isc_nrxqsets; } ;


 int vmxnet3_setup_debug_sysctl (struct vmxnet3_softc*,struct sysctl_ctx_list*,struct sysctl_oid_list*) ;
 int vmxnet3_setup_rxq_sysctl (int *,struct sysctl_ctx_list*,struct sysctl_oid_list*) ;
 int vmxnet3_setup_txq_sysctl (int *,struct sysctl_ctx_list*,struct sysctl_oid_list*) ;

__attribute__((used)) static void
vmxnet3_setup_queue_sysctl(struct vmxnet3_softc *sc,
    struct sysctl_ctx_list *ctx, struct sysctl_oid_list *child)
{
 if_softc_ctx_t scctx;
 int i;

 scctx = sc->vmx_scctx;

 for (i = 0; i < scctx->isc_ntxqsets; i++)
  vmxnet3_setup_txq_sysctl(&sc->vmx_txq[i], ctx, child);
 for (i = 0; i < scctx->isc_nrxqsets; i++)
  vmxnet3_setup_rxq_sysctl(&sc->vmx_rxq[i], ctx, child);

 vmxnet3_setup_debug_sysctl(sc, ctx, child);
}
