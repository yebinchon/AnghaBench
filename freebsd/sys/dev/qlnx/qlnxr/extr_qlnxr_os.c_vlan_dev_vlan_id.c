
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ifnet {int dummy; } ;


 scalar_t__ VLAN_TAG (struct ifnet*,int *) ;

__attribute__((used)) static inline uint16_t
vlan_dev_vlan_id(struct ifnet *ifp)
{
 uint16_t vtag;

 if (VLAN_TAG(ifp, &vtag) == 0)
  return (vtag);

 return (0);
}
