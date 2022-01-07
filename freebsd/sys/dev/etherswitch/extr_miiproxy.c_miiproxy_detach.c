
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int bus_generic_detach (int ) ;
 int rendezvous_unregister_proxy (int ) ;

__attribute__((used)) static int
miiproxy_detach(device_t dev)
{

 rendezvous_unregister_proxy(dev);
 bus_generic_detach(dev);
 return (0);
}
