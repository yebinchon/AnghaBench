
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int addr; } ;
typedef TYPE_1__ qlnx_perm_mac_addr_t ;
struct TYPE_6__ {int* primary_mac; } ;
typedef TYPE_2__ qlnx_host_t ;


 int bzero (int ,int) ;
 int snprintf (int ,int,char*,int,int,int,int,int,int) ;

__attribute__((used)) static void
qlnx_mac_addr(qlnx_host_t *ha, qlnx_perm_mac_addr_t *mac_addr)
{
 bzero(mac_addr->addr, sizeof(mac_addr->addr));
 snprintf(mac_addr->addr, sizeof(mac_addr->addr),
  "%02x:%02x:%02x:%02x:%02x:%02x",
  ha->primary_mac[0], ha->primary_mac[1], ha->primary_mac[2],
  ha->primary_mac[3], ha->primary_mac[4], ha->primary_mac[5]);

 return;
}
