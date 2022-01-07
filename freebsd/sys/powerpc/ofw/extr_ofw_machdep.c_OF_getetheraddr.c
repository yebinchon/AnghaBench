
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int phandle_t ;
typedef int device_t ;


 int ETHER_ADDR_LEN ;
 int OF_getprop (int ,char*,int *,int ) ;
 int ofw_bus_get_node (int ) ;

void
OF_getetheraddr(device_t dev, u_char *addr)
{
 phandle_t node;

 node = ofw_bus_get_node(dev);
 OF_getprop(node, "local-mac-address", addr, ETHER_ADDR_LEN);
}
