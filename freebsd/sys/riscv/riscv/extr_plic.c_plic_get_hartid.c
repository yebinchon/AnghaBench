
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int pcell_t ;
typedef int hart ;
typedef int device_t ;


 int OF_parent (int ) ;
 int OF_searchencprop (int ,char*,int*,int) ;
 int device_printf (int ,char*,...) ;

__attribute__((used)) static int
plic_get_hartid(device_t dev, phandle_t intc)
{
 int hart;


 if (OF_searchencprop(intc, "#interrupt-cells", &hart,
     sizeof(hart)) == -1) {
  device_printf(dev,
      "Could not find #interrupt-cells for phandle %u\n", intc);
  return (-1);
 }





 if (OF_searchencprop(OF_parent(intc), "reg", (pcell_t *)&hart,
     sizeof(hart)) == -1) {
  device_printf(dev, "Could not find hartid\n");
  return (-1);
 }

 return (hart);
}
