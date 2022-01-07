
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef scalar_t__ pcell_t ;


 scalar_t__ OF_getencprop (int ,char*,scalar_t__*,int) ;
 int OF_parent (int ) ;

int
uart_fdt_get_clock(phandle_t node, pcell_t *cell)
{


 if ((OF_getencprop(node, "clock-frequency", cell,
     sizeof(*cell))) <= 0) {


  if ((OF_getencprop(OF_parent(node), "bus-frequency", cell,
      sizeof(*cell))) <= 0)
   *cell = 0;
 }

 return (0);
}
