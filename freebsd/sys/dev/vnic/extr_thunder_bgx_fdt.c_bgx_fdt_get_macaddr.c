
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int phandle_t ;


 int ETHER_ADDR_LEN ;
 int OF_getprop (int ,char*,int *,int) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void
bgx_fdt_get_macaddr(phandle_t phy, uint8_t *hwaddr)
{
 uint8_t addr[ETHER_ADDR_LEN];

 if (OF_getprop(phy, "local-mac-address", addr, ETHER_ADDR_LEN) == -1) {

  memset(hwaddr, 0, ETHER_ADDR_LEN);
 } else
  memcpy(hwaddr, addr, ETHER_ADDR_LEN);
}
