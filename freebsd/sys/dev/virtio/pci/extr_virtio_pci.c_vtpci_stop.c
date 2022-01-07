
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int device_get_softc (int ) ;
 int vtpci_reset (int ) ;

__attribute__((used)) static void
vtpci_stop(device_t dev)
{

 vtpci_reset(device_get_softc(dev));
}
