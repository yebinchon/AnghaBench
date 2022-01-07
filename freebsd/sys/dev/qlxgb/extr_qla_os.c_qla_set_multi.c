
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct ifnet {int dummy; } ;
struct TYPE_4__ {struct ifnet* ifp; } ;
typedef TYPE_1__ qla_host_t ;


 int Q8_MAC_ADDR_LEN ;
 int Q8_MAX_NUM_MULTICAST_ADDRS ;
 int if_foreach_llmaddr (struct ifnet*,int ,int *) ;
 int qla_copy_maddr ;
 int qla_hw_set_multi (TYPE_1__*,int *,int,int ) ;

__attribute__((used)) static void
qla_set_multi(qla_host_t *ha, uint32_t add_multi)
{
 uint8_t mta[Q8_MAX_NUM_MULTICAST_ADDRS * Q8_MAC_ADDR_LEN];
 struct ifnet *ifp = ha->ifp;
 int mcnt;

 mcnt = if_foreach_llmaddr(ifp, qla_copy_maddr, mta);
 qla_hw_set_multi(ha, mta, mcnt, add_multi);

 return;
}
