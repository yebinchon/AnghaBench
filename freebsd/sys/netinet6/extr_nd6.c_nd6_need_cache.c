
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_type; } ;
__attribute__((used)) static int
nd6_need_cache(struct ifnet *ifp)
{







 switch (ifp->if_type) {
 case 132:
 case 131:
 case 129:
 case 130:
 case 133:
 case 128:
  return (1);
 default:
  return (0);
 }
}
