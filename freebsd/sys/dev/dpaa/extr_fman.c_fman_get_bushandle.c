
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct fman_softc {int mem_res; } ;
typedef int device_t ;


 struct fman_softc* device_get_softc (int ) ;
 int rman_get_bushandle (int ) ;

int
fman_get_bushandle(device_t dev, vm_offset_t *fm_base)
{
 struct fman_softc *sc = device_get_softc(dev);

 *fm_base = rman_get_bushandle(sc->mem_res);

 return (0);
}
