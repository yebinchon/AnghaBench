
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ixl_vsi {int media; TYPE_1__* shared; int ctx; } ;
struct ifnet {scalar_t__ if_mtu; } ;
struct iavf_sc {struct ixl_vsi vsi; } ;
typedef int if_ctx_t ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ isc_max_frame_size; } ;


 scalar_t__ ETHER_CRC_LEN ;
 scalar_t__ ETHER_HDR_LEN ;
 scalar_t__ ETHER_VLAN_ENCAP_LEN ;
 int IFM_AUTO ;
 int IFM_ETHER ;
 int IF_Gbps (int) ;
 int INIT_DBG_DEV (int ,char*) ;
 int if_initbaudrate (struct ifnet*,int ) ;
 int if_setbaudrate (struct ifnet*,int ) ;
 struct ifnet* iflib_get_ifp (int ) ;
 int ifmedia_add (int ,int,int ,int *) ;
 int ifmedia_set (int ,int) ;

__attribute__((used)) static void
iavf_setup_interface(device_t dev, struct iavf_sc *sc)
{
 struct ixl_vsi *vsi = &sc->vsi;
 if_ctx_t ctx = vsi->ctx;
 struct ifnet *ifp = iflib_get_ifp(ctx);

 INIT_DBG_DEV(dev, "begin");

 vsi->shared->isc_max_frame_size =
     ifp->if_mtu + ETHER_HDR_LEN + ETHER_CRC_LEN
     + ETHER_VLAN_ENCAP_LEN;



 if_initbaudrate(ifp, IF_Gbps(40));


 ifmedia_add(vsi->media, IFM_ETHER | IFM_AUTO, 0, ((void*)0));
 ifmedia_set(vsi->media, IFM_ETHER | IFM_AUTO);
}
