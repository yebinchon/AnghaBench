
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct netfront_info {int num_queues; TYPE_1__* rxq; int xbdev; struct ifnet* xn_ifp; } ;
struct ifnet {int if_capenable; int if_capabilities; int if_hwassist; } ;
struct TYPE_5__ {struct ifnet* ifp; } ;
struct TYPE_4__ {TYPE_2__ lro; } ;


 int CSUM_TSO ;
 int IFCAP_LRO ;
 int IFCAP_RXCSUM ;
 int IFCAP_TSO4 ;
 int IFCAP_TXCSUM ;
 int XN_CSUM_FEATURES ;
 int device_printf (int ,char*) ;
 int tcp_lro_free (TYPE_2__*) ;
 int tcp_lro_init (TYPE_2__*) ;
 scalar_t__ xn_enable_lro ;

__attribute__((used)) static int
xn_configure_features(struct netfront_info *np)
{
 int err, cap_enabled;



 struct ifnet *ifp;

 ifp = np->xn_ifp;
 err = 0;

 if ((ifp->if_capenable & ifp->if_capabilities) == ifp->if_capenable) {

  return (0);
 }


 cap_enabled = ifp->if_capenable;
 ifp->if_capenable = ifp->if_hwassist = 0;
 if ((ifp->if_capabilities & cap_enabled & IFCAP_TXCSUM) != 0) {
  ifp->if_capenable |= IFCAP_TXCSUM;
  ifp->if_hwassist |= XN_CSUM_FEATURES;
 }
 if ((ifp->if_capabilities & cap_enabled & IFCAP_RXCSUM) != 0)
  ifp->if_capenable |= IFCAP_RXCSUM;

 return (err);
}
