
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmxnet3_softc {int vmx_lladdr; int vmx_ifp; TYPE_1__* vmx_scctx; } ;
typedef TYPE_1__* if_softc_ctx_t ;
typedef int if_ctx_t ;
struct TYPE_2__ {scalar_t__ isc_max_frame_size; } ;


 int ETHER_ADDR_LEN ;
 scalar_t__ ETHER_CRC_LEN ;
 scalar_t__ ETHER_HDR_LEN ;
 scalar_t__ ETHER_VLAN_ENCAP_LEN ;
 int IF_LLADDR (int ) ;
 int bcopy (int ,int ,int ) ;
 scalar_t__ if_getmtu (int ) ;
 int iflib_get_ifp (int ) ;
 struct vmxnet3_softc* iflib_get_softc (int ) ;
 int vmxnet3_enable_device (struct vmxnet3_softc*) ;
 int vmxnet3_link_status (struct vmxnet3_softc*) ;
 int vmxnet3_reinit_queues (struct vmxnet3_softc*) ;
 int vmxnet3_reinit_rxfilters (struct vmxnet3_softc*) ;
 int vmxnet3_reinit_shared_data (struct vmxnet3_softc*) ;
 int vmxnet3_set_lladdr (struct vmxnet3_softc*) ;

__attribute__((used)) static void
vmxnet3_init(if_ctx_t ctx)
{
 struct vmxnet3_softc *sc;
 if_softc_ctx_t scctx;

 sc = iflib_get_softc(ctx);
 scctx = sc->vmx_scctx;

 scctx->isc_max_frame_size = if_getmtu(iflib_get_ifp(ctx)) +
     ETHER_HDR_LEN + ETHER_VLAN_ENCAP_LEN + ETHER_CRC_LEN;


 bcopy(IF_LLADDR(sc->vmx_ifp), sc->vmx_lladdr, ETHER_ADDR_LEN);
 vmxnet3_set_lladdr(sc);

 vmxnet3_reinit_shared_data(sc);
 vmxnet3_reinit_queues(sc);

 vmxnet3_enable_device(sc);

 vmxnet3_reinit_rxfilters(sc);
 vmxnet3_link_status(sc);
}
