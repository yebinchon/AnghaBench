
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct mc146818_softc {int (* sc_mcwrite ) (int ,int ,int ) ;} ;
typedef int device_t ;


 int MC_CENT ;
 struct mc146818_softc* device_get_softc (int ) ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static void
mc146818_def_setcent(device_t dev, u_int cent)
{
 struct mc146818_softc *sc;

 sc = device_get_softc(dev);
 (*sc->sc_mcwrite)(dev, MC_CENT, cent);
}
