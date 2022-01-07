
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct firewire_softc {TYPE_1__* fc; } ;
typedef int device_t ;
struct TYPE_2__ {int status; } ;


 int FWBUSNOTREADY ;
 int bus_generic_resume (int ) ;
 struct firewire_softc* device_get_softc (int ) ;

__attribute__((used)) static int
firewire_resume(device_t dev)
{
 struct firewire_softc *sc;

 sc = device_get_softc(dev);
 sc->fc->status = FWBUSNOTREADY;

 bus_generic_resume(dev);

 return (0);
}
