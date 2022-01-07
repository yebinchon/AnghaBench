
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct ifnet {int dummy; } ;
struct TYPE_6__ {scalar_t__ media_type; scalar_t__ type; } ;
struct TYPE_5__ {scalar_t__ type; } ;
struct TYPE_7__ {TYPE_2__ phy; TYPE_1__ mac; } ;
struct adapter {int tx_num_queues; int media; TYPE_3__ hw; TYPE_4__* shared; } ;
typedef TYPE_4__* if_softc_ctx_t ;
typedef int if_ctx_t ;
struct TYPE_8__ {scalar_t__* isc_ntxd; } ;


 int IFM_1000_LX ;
 int IFM_1000_SX ;
 int IFM_1000_T ;
 int IFM_100_TX ;
 int IFM_10_T ;
 int IFM_AUTO ;
 int IFM_ETHER ;
 int IFM_FDX ;
 int INIT_DEBUGOUT (char*) ;
 scalar_t__ e1000_82545 ;
 scalar_t__ e1000_media_type_fiber ;
 scalar_t__ e1000_media_type_internal_serdes ;
 scalar_t__ e1000_phy_ife ;
 int if_setsendqlen (struct ifnet*,scalar_t__) ;
 int if_setsendqready (struct ifnet*) ;
 struct ifnet* iflib_get_ifp (int ) ;
 struct adapter* iflib_get_softc (int ) ;
 int ifmedia_add (int ,int,int ,int *) ;
 int ifmedia_set (int ,int) ;

__attribute__((used)) static int
em_setup_interface(if_ctx_t ctx)
{
 struct ifnet *ifp = iflib_get_ifp(ctx);
 struct adapter *adapter = iflib_get_softc(ctx);
 if_softc_ctx_t scctx = adapter->shared;

 INIT_DEBUGOUT("em_setup_interface: begin");


 if (adapter->tx_num_queues == 1) {
  if_setsendqlen(ifp, scctx->isc_ntxd[0] - 1);
  if_setsendqready(ifp);
 }





 if ((adapter->hw.phy.media_type == e1000_media_type_fiber) ||
     (adapter->hw.phy.media_type == e1000_media_type_internal_serdes)) {
  u_char fiber_type = IFM_1000_SX;

  if (adapter->hw.mac.type == e1000_82545)
   fiber_type = IFM_1000_LX;
  ifmedia_add(adapter->media, IFM_ETHER | fiber_type | IFM_FDX, 0, ((void*)0));
  ifmedia_add(adapter->media, IFM_ETHER | fiber_type, 0, ((void*)0));
 } else {
  ifmedia_add(adapter->media, IFM_ETHER | IFM_10_T, 0, ((void*)0));
  ifmedia_add(adapter->media, IFM_ETHER | IFM_10_T | IFM_FDX, 0, ((void*)0));
  ifmedia_add(adapter->media, IFM_ETHER | IFM_100_TX, 0, ((void*)0));
  ifmedia_add(adapter->media, IFM_ETHER | IFM_100_TX | IFM_FDX, 0, ((void*)0));
  if (adapter->hw.phy.type != e1000_phy_ife) {
   ifmedia_add(adapter->media, IFM_ETHER | IFM_1000_T | IFM_FDX, 0, ((void*)0));
   ifmedia_add(adapter->media, IFM_ETHER | IFM_1000_T, 0, ((void*)0));
  }
 }
 ifmedia_add(adapter->media, IFM_ETHER | IFM_AUTO, 0, ((void*)0));
 ifmedia_set(adapter->media, IFM_ETHER | IFM_AUTO);
 return (0);
}
