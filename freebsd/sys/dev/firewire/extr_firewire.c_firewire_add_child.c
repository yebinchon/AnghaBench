
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct firewire_softc {int fc; } ;
typedef scalar_t__ device_t ;


 scalar_t__ device_add_child (scalar_t__,char const*,int) ;
 struct firewire_softc* device_get_softc (scalar_t__) ;
 int device_probe_and_attach (scalar_t__) ;
 int device_set_ivars (scalar_t__,int ) ;

__attribute__((used)) static device_t
firewire_add_child(device_t dev, u_int order, const char *name, int unit)
{
 device_t child;
 struct firewire_softc *sc;

 sc = device_get_softc(dev);
 child = device_add_child(dev, name, unit);
 if (child) {
  device_set_ivars(child, sc->fc);
  device_probe_and_attach(child);
 }

 return child;
}
