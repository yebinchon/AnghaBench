
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int bus_generic_attach (int ) ;
 int mdioproxy_rendezvous_callback ;
 int rendezvous_register_target (int ,int ) ;

__attribute__((used)) static int
mdioproxy_attach(device_t dev)
{

 rendezvous_register_target(dev, mdioproxy_rendezvous_callback);
 return (bus_generic_attach(dev));
}
