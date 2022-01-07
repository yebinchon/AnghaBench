
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct mc146818_softc {int (* sc_mcread ) (int ,int ) ;} ;
typedef int device_t ;


 int MC_CENT ;
 struct mc146818_softc* device_get_softc (int ) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static u_int
mc146818_def_getcent(device_t dev)
{
 struct mc146818_softc *sc;

 sc = device_get_softc(dev);
 return ((*sc->sc_mcread)(dev, MC_CENT));
}
