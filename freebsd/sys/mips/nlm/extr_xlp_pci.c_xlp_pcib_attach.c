
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int XLP_MAX_NODES ;
 int bus_generic_attach (int ) ;
 int device_add_child (int ,char*,int) ;
 int xlp_pcib_hardware_swap_enable (int,int) ;

__attribute__((used)) static int
xlp_pcib_attach(device_t dev)
{
 int node, link;


 for (node = 0; node < XLP_MAX_NODES; node++)
  for (link = 0; link < 4; link++)
   xlp_pcib_hardware_swap_enable(node, link);

 device_add_child(dev, "pci", -1);
 bus_generic_attach(dev);
 return (0);
}
