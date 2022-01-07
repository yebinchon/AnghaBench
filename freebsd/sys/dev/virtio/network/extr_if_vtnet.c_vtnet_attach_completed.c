
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int device_get_softc (int ) ;
 int vtnet_attach_disable_promisc (int ) ;

__attribute__((used)) static int
vtnet_attach_completed(device_t dev)
{

 vtnet_attach_disable_promisc(device_get_softc(dev));

 return (0);
}
