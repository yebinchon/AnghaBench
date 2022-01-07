
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_6__ {int nmcast; TYPE_1__* mcast; } ;
struct TYPE_7__ {TYPE_2__ hw; } ;
typedef TYPE_3__ qla_host_t ;
struct TYPE_5__ {scalar_t__* addr; } ;


 int ETHER_ADDR_LEN ;
 int Q8_MAX_NUM_MULTICAST_ADDRS ;
 scalar_t__ QL_MAC_CMP (scalar_t__*,int *) ;

__attribute__((used)) static int
qla_hw_del_mcast(qla_host_t *ha, uint8_t *mta, uint32_t nmcast)
{
 int i;

 for (i = 0; i < Q8_MAX_NUM_MULTICAST_ADDRS; i++) {
  if (QL_MAC_CMP(ha->hw.mcast[i].addr, mta) == 0) {

   ha->hw.mcast[i].addr[0] = 0;
   ha->hw.mcast[i].addr[1] = 0;
   ha->hw.mcast[i].addr[2] = 0;
   ha->hw.mcast[i].addr[3] = 0;
   ha->hw.mcast[i].addr[4] = 0;
   ha->hw.mcast[i].addr[5] = 0;

   ha->hw.nmcast--;

   mta = mta + ETHER_ADDR_LEN;
   nmcast--;

   if (nmcast == 0)
    break;
  }
 }
 return 0;
}
