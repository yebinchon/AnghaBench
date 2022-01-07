
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int bus_generic_shutdown (int ) ;
 int vtpci_stop (int ) ;

__attribute__((used)) static int
vtpci_shutdown(device_t dev)
{

 (void) bus_generic_shutdown(dev);

 vtpci_stop(dev);

 return (0);
}
