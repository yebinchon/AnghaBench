
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int iflib_txq_t ;
typedef TYPE_1__* if_ctx_t ;
typedef int device_t ;
struct TYPE_8__ {int ifc_txqs; } ;


 int CTX_LOCK (TYPE_1__*) ;
 int CTX_UNLOCK (TYPE_1__*) ;
 int IFDI_RESUME (TYPE_1__*) ;
 int IFLIB_RESTART_BUDGET ;
 int NTXQSETS (TYPE_1__*) ;
 int bus_generic_resume (int ) ;
 TYPE_1__* device_get_softc (int ) ;
 int iflib_if_init_locked (TYPE_1__*) ;
 int iflib_txq_check_drain (int ,int ) ;

int
iflib_device_resume(device_t dev)
{
 if_ctx_t ctx = device_get_softc(dev);
 iflib_txq_t txq = ctx->ifc_txqs;

 CTX_LOCK(ctx);
 IFDI_RESUME(ctx);
 iflib_if_init_locked(ctx);
 CTX_UNLOCK(ctx);
 for (int i = 0; i < NTXQSETS(ctx); i++, txq++)
  iflib_txq_check_drain(txq, IFLIB_RESTART_BUDGET);

 return (bus_generic_resume(dev));
}
