
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_pcib_softc {int sc_cfg_mtx; } ;
typedef int device_t ;


 int bus_generic_detach (int ) ;
 struct fsl_pcib_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static int
fsl_pcib_detach(device_t dev)
{
 struct fsl_pcib_softc *sc;

 sc = device_get_softc(dev);

 mtx_destroy(&sc->sc_cfg_mtx);

 return (bus_generic_detach(dev));
}
