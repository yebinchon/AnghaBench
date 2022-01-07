
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
struct iavf_sc {int promisc_flags; } ;
typedef int if_ctx_t ;


 int FLAG_VF_MULTICAST_PROMISC ;
 int FLAG_VF_UNICAST_PROMISC ;
 int IAVF_FLAG_AQ_CONFIGURE_PROMISC ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 scalar_t__ MAX_MULTICAST_ADDR ;
 int iavf_send_vc_msg (struct iavf_sc*,int ) ;
 scalar_t__ if_llmaddr_count (struct ifnet*) ;
 struct ifnet* iflib_get_ifp (int ) ;
 struct iavf_sc* iflib_get_softc (int ) ;

__attribute__((used)) static int
iavf_if_promisc_set(if_ctx_t ctx, int flags)
{
 struct iavf_sc *sc = iflib_get_softc(ctx);
 struct ifnet *ifp = iflib_get_ifp(ctx);

 sc->promisc_flags = 0;

 if (flags & IFF_ALLMULTI || if_llmaddr_count(ifp) >=
     MAX_MULTICAST_ADDR)
  sc->promisc_flags |= FLAG_VF_MULTICAST_PROMISC;
 if (flags & IFF_PROMISC)
  sc->promisc_flags |= FLAG_VF_UNICAST_PROMISC;

 iavf_send_vc_msg(sc, IAVF_FLAG_AQ_CONFIGURE_PROMISC);

 return (0);
}
