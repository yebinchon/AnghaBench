
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {scalar_t__ if_type; } ;


 int EPERM ;
 scalar_t__ IFT_LOOP ;
 int ifoff_enabled ;
 scalar_t__ ifoff_lo_enabled ;
 scalar_t__ ifoff_other_enabled ;

__attribute__((used)) static int
ifnet_check_outgoing(struct ifnet *ifp)
{

 if (!ifoff_enabled)
  return (0);

 if (ifoff_lo_enabled && ifp->if_type == IFT_LOOP)
  return (0);

 if (ifoff_other_enabled && ifp->if_type != IFT_LOOP)
  return (0);

 return (EPERM);
}
