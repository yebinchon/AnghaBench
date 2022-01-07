
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct cmac {unsigned int ext_port; unsigned int nucast; TYPE_2__* adapter; scalar_t__ multiport; } ;
struct TYPE_3__ {unsigned int nports; } ;
struct TYPE_4__ {TYPE_1__ params; } ;


 int EINVAL ;
 int set_addr_filter (struct cmac*,unsigned int,int *) ;
 int t3_vsc7323_set_addr (TYPE_2__*,int *,unsigned int) ;

int t3_mac_set_address(struct cmac *mac, unsigned int idx, u8 addr[6])
{
 if (mac->multiport)
  idx = mac->ext_port + idx * mac->adapter->params.nports;
 if (idx >= mac->nucast)
  return -EINVAL;
 set_addr_filter(mac, idx, addr);
 if (mac->multiport && idx < mac->adapter->params.nports)
  t3_vsc7323_set_addr(mac->adapter, addr, idx);
 return 0;
}
