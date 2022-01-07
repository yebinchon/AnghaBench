
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hifn_softc {int sc_suspended; } ;
typedef int device_t ;


 struct hifn_softc* device_get_softc (int ) ;
 int hifn_stop (struct hifn_softc*) ;

__attribute__((used)) static int
hifn_suspend(device_t dev)
{
 struct hifn_softc *sc = device_get_softc(dev);



 sc->sc_suspended = 1;

 return (0);
}
