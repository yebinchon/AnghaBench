
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet {int dummy; } ;
struct TYPE_2__ {int func; scalar_t__ flag; } ;


 TYPE_1__* vlan_pflags ;
 int vlan_setflag (struct ifnet*,scalar_t__,int,int ) ;

__attribute__((used)) static int
vlan_setflags(struct ifnet *ifp, int status)
{
 int error, i;

 for (i = 0; vlan_pflags[i].flag; i++) {
  error = vlan_setflag(ifp, vlan_pflags[i].flag,
         status, vlan_pflags[i].func);
  if (error)
   return (error);
 }
 return (0);
}
