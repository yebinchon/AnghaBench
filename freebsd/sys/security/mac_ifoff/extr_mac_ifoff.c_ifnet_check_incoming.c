
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {scalar_t__ if_type; } ;


 int EPERM ;
 scalar_t__ IFT_LOOP ;
 scalar_t__ ifoff_bpfrecv_enabled ;
 int ifoff_enabled ;
 scalar_t__ ifoff_lo_enabled ;
 scalar_t__ ifoff_other_enabled ;

__attribute__((used)) static int
ifnet_check_incoming(struct ifnet *ifp, int viabpf)
{
 if (!ifoff_enabled)
  return (0);

 if (ifoff_lo_enabled && ifp->if_type == IFT_LOOP)
  return (0);

 if (ifoff_other_enabled && ifp->if_type != IFT_LOOP)
  return (0);

 if (viabpf && ifoff_bpfrecv_enabled)
  return (0);

 return (EPERM);
}
