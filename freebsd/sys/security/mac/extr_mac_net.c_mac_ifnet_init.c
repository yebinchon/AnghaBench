
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int * if_label; } ;


 int MPC_OBJECT_IFNET ;
 int * mac_ifnet_label_alloc () ;
 int mac_labeled ;

void
mac_ifnet_init(struct ifnet *ifp)
{

 if (mac_labeled & MPC_OBJECT_IFNET)
  ifp->if_label = mac_ifnet_label_alloc();
 else
  ifp->if_label = ((void*)0);
}
