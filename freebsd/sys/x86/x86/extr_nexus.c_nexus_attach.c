
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int * BUS_ADD_CHILD (int ,int,char*,int ) ;
 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 int nexus_init_resources () ;
 int panic (char*) ;

__attribute__((used)) static int
nexus_attach(device_t dev)
{

 nexus_init_resources();
 bus_generic_probe(dev);






 if (BUS_ADD_CHILD(dev, 10, "legacy", 0) == ((void*)0))
  panic("legacy: could not attach");
 bus_generic_attach(dev);
 return 0;
}
