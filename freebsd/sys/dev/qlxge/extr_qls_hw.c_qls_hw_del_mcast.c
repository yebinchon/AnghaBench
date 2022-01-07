
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int nmcast; TYPE_1__* mcast; } ;
typedef TYPE_2__ qla_host_t ;
struct TYPE_5__ {scalar_t__* addr; } ;


 int Q8_MAX_NUM_MULTICAST_ADDRS ;
 scalar_t__ QL_MAC_CMP (scalar_t__*,int *) ;
 scalar_t__ qls_config_mcast_mac_addr (TYPE_2__*,int *,int ,int) ;

__attribute__((used)) static int
qls_hw_del_mcast(qla_host_t *ha, uint8_t *mta)
{
 int i;

 for (i = 0; i < Q8_MAX_NUM_MULTICAST_ADDRS; i++) {
  if (QL_MAC_CMP(ha->mcast[i].addr, mta) == 0) {

   if (qls_config_mcast_mac_addr(ha, mta, 0, i))
    return (-1);

   ha->mcast[i].addr[0] = 0;
   ha->mcast[i].addr[1] = 0;
   ha->mcast[i].addr[2] = 0;
   ha->mcast[i].addr[3] = 0;
   ha->mcast[i].addr[4] = 0;
   ha->mcast[i].addr[5] = 0;

   ha->nmcast--;

   return 0;
  }
 }
 return 0;
}
