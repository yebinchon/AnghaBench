
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int shift ;
typedef int phandle_t ;
typedef int pcell_t ;
typedef int device_t ;


 scalar_t__ OF_getencprop (int ,char*,int*,int) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
jz4780_uart_get_shift(device_t dev)
{
 phandle_t node;
 pcell_t shift;

 node = ofw_bus_get_node(dev);
 if ((OF_getencprop(node, "reg-shift", &shift, sizeof(shift))) <= 0)
  shift = 2;
 return ((int)shift);
}
