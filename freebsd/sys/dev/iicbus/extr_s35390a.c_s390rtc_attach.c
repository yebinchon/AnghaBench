
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s390rtc_softc {int sc_addr; int sc_dev; } ;
typedef int device_t ;


 int config_intrhook_oneshot (int ,int ) ;
 struct s390rtc_softc* device_get_softc (int ) ;
 int iicbus_get_addr (int ) ;
 int s390rtc_start ;

__attribute__((used)) static int
s390rtc_attach(device_t dev)
{
 struct s390rtc_softc *sc;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;
 sc->sc_addr = iicbus_get_addr(dev);

 config_intrhook_oneshot(s390rtc_start, dev);

 return (0);
}
