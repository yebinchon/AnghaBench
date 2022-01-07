
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ural_softc {int sc_mtx; } ;


 int usb_pause_mtx (int *,int) ;

__attribute__((used)) static int
ural_pause(struct ural_softc *sc, int timeout)
{

 usb_pause_mtx(&sc->sc_mtx, timeout);
 return (0);
}
