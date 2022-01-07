
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* iflib_rxq_t ;
typedef TYPE_3__* if_ctx_t ;
struct TYPE_6__ {int isc_nrxqsets; int * isc_nrxd; } ;
struct TYPE_8__ {int ifc_ifp; TYPE_2__* ifc_rxqs; int ifc_dev; TYPE_1__ ifc_softc_ctx; } ;
struct TYPE_7__ {size_t ifr_fl_offset; int ifr_lc; int ifr_id; } ;


 int IFCAP_LRO ;
 int IFDI_RXQ_SETUP (TYPE_3__*,int ) ;
 int TCP_LRO_ENTRIES ;
 int device_printf (int ,char*) ;
 int if_getcapabilities (int ) ;
 int min (int,int ) ;
 int tcp_lro_free (int *) ;
 int tcp_lro_init_args (int *,int ,int ,int ) ;

__attribute__((used)) static int
iflib_rx_structures_setup(if_ctx_t ctx)
{
 iflib_rxq_t rxq = ctx->ifc_rxqs;
 int q;




 for (q = 0; q < ctx->ifc_softc_ctx.isc_nrxqsets; q++, rxq++) {
  IFDI_RXQ_SETUP(ctx, rxq->ifr_id);
 }
 return (0);
}
