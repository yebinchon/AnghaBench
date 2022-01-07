
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iavf_sc {int promisc_flags; } ;
typedef int if_ctx_t ;


 int FLAG_VF_MULTICAST_PROMISC ;
 int IAVF_FLAG_AQ_ADD_MAC_FILTER ;
 int IAVF_FLAG_AQ_CONFIGURE_PROMISC ;
 int IOCTL_DEBUGOUT (char*) ;
 scalar_t__ MAX_MULTICAST_ADDR ;
 scalar_t__ __predict_false (int) ;
 int iavf_init_multi (struct iavf_sc*) ;
 int iavf_mc_filter_apply ;
 int iavf_send_vc_msg (struct iavf_sc*,int ) ;
 scalar_t__ if_foreach_llmaddr (int ,int ,struct iavf_sc*) ;
 scalar_t__ if_llmaddr_count (int ) ;
 int iflib_get_ifp (int ) ;
 struct iavf_sc* iflib_get_softc (int ) ;

__attribute__((used)) static void
iavf_if_multi_set(if_ctx_t ctx)
{
 struct iavf_sc *sc = iflib_get_softc(ctx);

 IOCTL_DEBUGOUT("iavf_if_multi_set: begin");

 if (__predict_false(if_llmaddr_count(iflib_get_ifp(ctx)) >=
     MAX_MULTICAST_ADDR)) {

  iavf_init_multi(sc);
  sc->promisc_flags |= FLAG_VF_MULTICAST_PROMISC;
  iavf_send_vc_msg(sc, IAVF_FLAG_AQ_CONFIGURE_PROMISC);
  return;
 }


 iavf_init_multi(sc);


 if (if_foreach_llmaddr(iflib_get_ifp(ctx), iavf_mc_filter_apply, sc) >
     0)
  iavf_send_vc_msg(sc, IAVF_FLAG_AQ_ADD_MAC_FILTER);
}
