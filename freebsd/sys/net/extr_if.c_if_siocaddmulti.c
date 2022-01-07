
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int (* if_ioctl ) (struct ifnet*,int ,int ) ;int if_vnet; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int SIOCADDMULTI ;
 int if_printf (struct ifnet*,char*,int) ;
 int stub1 (struct ifnet*,int ,int ) ;

__attribute__((used)) static void
if_siocaddmulti(void *arg, int pending)
{
 struct ifnet *ifp;

 ifp = arg;




 CURVNET_SET(ifp->if_vnet);
 (void )(*ifp->if_ioctl)(ifp, SIOCADDMULTI, 0);
 CURVNET_RESTORE();
}
