
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {TYPE_1__* port; } ;
typedef TYPE_2__ adapter_t ;
struct TYPE_4__ {int hw_addr; } ;


 int ETHER_ADDR_LEN ;
 int bcopy (int *,int ,int ) ;
 scalar_t__ cxgb_debug ;
 int printf (char*,int,int *,char*) ;

void
t3_os_set_hw_addr(adapter_t *adapter, int port_idx, u8 hw_addr[])
{






 if (cxgb_debug)
  printf("set_hw_addr on idx %d addr %6D\n", port_idx, hw_addr, ":");
 bcopy(hw_addr, adapter->port[port_idx].hw_addr, ETHER_ADDR_LEN);
}
