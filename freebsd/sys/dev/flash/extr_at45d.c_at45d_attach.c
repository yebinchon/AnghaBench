
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at45d_softc {int dev; } ;
typedef int device_t ;


 int AT45D_LOCK_INIT (struct at45d_softc*) ;
 int at45d_delayed_attach ;
 int config_intrhook_oneshot (int ,struct at45d_softc*) ;
 struct at45d_softc* device_get_softc (int ) ;

__attribute__((used)) static int
at45d_attach(device_t dev)
{
 struct at45d_softc *sc;

 sc = device_get_softc(dev);
 sc->dev = dev;
 AT45D_LOCK_INIT(sc);

 config_intrhook_oneshot(at45d_delayed_attach, sc);
 return (0);
}
