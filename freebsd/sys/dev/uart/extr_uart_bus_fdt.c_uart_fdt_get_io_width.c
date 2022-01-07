
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int pcell_t ;


 scalar_t__ OF_getencprop (int ,char*,int *,int) ;

int
uart_fdt_get_io_width(phandle_t node, pcell_t *cell)
{

 if ((OF_getencprop(node, "reg-io-width", cell, sizeof(*cell))) <= 0)
  return (-1);
 return (0);
}
