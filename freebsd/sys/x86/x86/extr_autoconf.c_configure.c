
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isa_bus_device ;
 int isa_probe_children (scalar_t__) ;
 int root_bus_configure () ;

__attribute__((used)) static void
configure(void *dummy)
{


 root_bus_configure();
}
