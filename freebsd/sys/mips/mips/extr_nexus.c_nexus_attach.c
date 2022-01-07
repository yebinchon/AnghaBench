
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int bus_enumerate_hinted_children (int ) ;
 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 int mips_pic_map_fixed_intrs () ;

__attribute__((used)) static int
nexus_attach(device_t dev)
{







 bus_generic_probe(dev);
 bus_enumerate_hinted_children(dev);
 bus_generic_attach(dev);

 return (0);
}
