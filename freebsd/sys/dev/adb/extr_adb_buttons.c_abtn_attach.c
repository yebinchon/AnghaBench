
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct abtn_softc {int handler_id; int sc_dev; } ;
typedef int device_t ;


 int adb_get_device_handler (int ) ;
 struct abtn_softc* device_get_softc (int ) ;

__attribute__((used)) static int
abtn_attach(device_t dev)
{
 struct abtn_softc *sc;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;

 sc->handler_id = adb_get_device_handler(dev);

 return 0;
}
