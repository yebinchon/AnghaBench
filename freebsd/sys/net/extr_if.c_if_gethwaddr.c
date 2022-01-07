
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sa_data; } ;
struct ifreq {TYPE_1__ ifr_addr; } ;
struct ifnet {int if_type; int if_addrlen; int * if_hw_addr; } ;


 int ENODEV ;


 int bcopy (int *,int ,int ) ;

int
if_gethwaddr(struct ifnet *ifp, struct ifreq *ifr)
{

 if (ifp->if_hw_addr == ((void*)0))
  return (ENODEV);

 switch (ifp->if_type) {
 case 129:
 case 128:
  bcopy(ifp->if_hw_addr, ifr->ifr_addr.sa_data, ifp->if_addrlen);
  return (0);
 default:
  return (ENODEV);
 }
}
