
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atibl_softc {int sc_level; } ;
typedef int device_t ;


 int atibl_setlevel (struct atibl_softc*,int ) ;
 struct atibl_softc* device_get_softc (int ) ;

__attribute__((used)) static int
atibl_resume(device_t dev)
{
 struct atibl_softc *sc;

 sc = device_get_softc(dev);

 atibl_setlevel(sc, sc->sc_level);

 return (0);
}
