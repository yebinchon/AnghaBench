
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ifq_maxlen; } ;
struct ifnet {scalar_t__ if_mtu; TYPE_1__ if_snd; } ;
struct adapter {int media; scalar_t__ max_frame_size; TYPE_2__* shared; } ;
typedef TYPE_2__* if_softc_ctx_t ;
typedef int if_ctx_t ;
struct TYPE_4__ {scalar_t__* isc_ntxd; } ;


 int IFM_AUTO ;
 int IFM_ETHER ;
 int IF_Gbps (int) ;
 int INIT_DEBUGOUT (char*) ;
 scalar_t__ IXGBE_MTU_HDR ;
 int if_setbaudrate (struct ifnet*,int ) ;
 struct ifnet* iflib_get_ifp (int ) ;
 struct adapter* iflib_get_softc (int ) ;
 int ifmedia_add (int ,int,int ,int *) ;
 int ifmedia_set (int ,int) ;

__attribute__((used)) static int
ixv_setup_interface(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 if_softc_ctx_t scctx = adapter->shared;
 struct ifnet *ifp = iflib_get_ifp(ctx);

 INIT_DEBUGOUT("ixv_setup_interface: begin");

 if_setbaudrate(ifp, IF_Gbps(10));
 ifp->if_snd.ifq_maxlen = scctx->isc_ntxd[0] - 2;


 adapter->max_frame_size = ifp->if_mtu + IXGBE_MTU_HDR;
 ifmedia_add(adapter->media, IFM_ETHER | IFM_AUTO, 0, ((void*)0));
 ifmedia_set(adapter->media, IFM_ETHER | IFM_AUTO);

 return 0;
}
