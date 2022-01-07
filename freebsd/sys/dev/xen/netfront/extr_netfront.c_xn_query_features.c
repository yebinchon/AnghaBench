
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netfront_info {int maxfrags; TYPE_1__* xn_ifp; int xbdev; } ;
struct TYPE_2__ {int if_capabilities; } ;


 int IFCAP_HWCSUM ;
 int IFCAP_LRO ;
 int IFCAP_TSO4 ;
 int MAX_TX_REQ_FRAGS ;
 int XST_NIL ;
 int device_printf (int ,char*) ;
 int printf (char*) ;
 int xenbus_get_otherend_path (int ) ;
 scalar_t__ xs_scanf (int ,int ,char*,int *,char*,int*) ;

__attribute__((used)) static void
xn_query_features(struct netfront_info *np)
{
 int val;

 device_printf(np->xbdev, "backend features:");

 if (xs_scanf(XST_NIL, xenbus_get_otherend_path(np->xbdev),
  "feature-sg", ((void*)0), "%d", &val) != 0)
  val = 0;

 np->maxfrags = 1;
 if (val) {
  np->maxfrags = MAX_TX_REQ_FRAGS;
  printf(" feature-sg");
 }

 if (xs_scanf(XST_NIL, xenbus_get_otherend_path(np->xbdev),
  "feature-gso-tcpv4", ((void*)0), "%d", &val) != 0)
  val = 0;

 np->xn_ifp->if_capabilities &= ~(IFCAP_TSO4|IFCAP_LRO);
 if (val) {
  np->xn_ifp->if_capabilities |= IFCAP_TSO4|IFCAP_LRO;
  printf(" feature-gso-tcp4");
 }





 if (xs_scanf(XST_NIL, xenbus_get_otherend_path(np->xbdev),
  "feature-no-csum-offload", ((void*)0), "%d", &val) != 0)
  val = 0;

 np->xn_ifp->if_capabilities |= IFCAP_HWCSUM;
 if (val) {
  np->xn_ifp->if_capabilities &= ~(IFCAP_HWCSUM);
  printf(" feature-no-csum-offload");
 }

 printf("\n");
}
