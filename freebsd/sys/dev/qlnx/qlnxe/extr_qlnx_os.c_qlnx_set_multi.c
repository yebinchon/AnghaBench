
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int u_int ;
struct ifnet {int dummy; } ;
struct TYPE_7__ {struct ifnet* ifp; } ;
typedef TYPE_1__ qlnx_host_t ;


 int ETHER_HDR_LEN ;
 int QLNX_LOCK (TYPE_1__*) ;
 int QLNX_MAX_NUM_MULTICAST_ADDRS ;
 int QLNX_UNLOCK (TYPE_1__*) ;
 int if_foreach_llmaddr (struct ifnet*,int ,int *) ;
 int qlnx_copy_maddr ;
 int qlnx_hw_set_multi (TYPE_1__*,int *,int ,int ) ;
 scalar_t__ qlnx_vf_device (TYPE_1__*) ;

__attribute__((used)) static int
qlnx_set_multi(qlnx_host_t *ha, uint32_t add_multi)
{
 uint8_t mta[QLNX_MAX_NUM_MULTICAST_ADDRS * ETHER_HDR_LEN];
 struct ifnet *ifp = ha->ifp;
 u_int mcnt;

 if (qlnx_vf_device(ha) == 0)
  return (0);

 mcnt = if_foreach_llmaddr(ifp, qlnx_copy_maddr, mta);

 QLNX_LOCK(ha);
 qlnx_hw_set_multi(ha, mta, mcnt, add_multi);
 QLNX_UNLOCK(ha);

 return (0);
}
