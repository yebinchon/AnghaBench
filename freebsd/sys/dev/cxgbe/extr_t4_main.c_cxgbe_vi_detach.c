
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vi_info {struct ifnet* ifp; int tick; } ;
struct ifnet {int if_capabilities; } ;


 int IFCAP_NETMAP ;
 int callout_drain (int *) ;
 int cxgbe_nm_detach (struct vi_info*) ;
 int cxgbe_uninit_synchronized (struct vi_info*) ;
 int ether_ifdetach (struct ifnet*) ;
 int if_free (struct ifnet*) ;
 int vi_full_uninit (struct vi_info*) ;

__attribute__((used)) static void
cxgbe_vi_detach(struct vi_info *vi)
{
 struct ifnet *ifp = vi->ifp;

 ether_ifdetach(ifp);






 cxgbe_uninit_synchronized(vi);
 callout_drain(&vi->tick);
 vi_full_uninit(vi);

 if_free(vi->ifp);
 vi->ifp = ((void*)0);
}
