
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct syr827_softc {TYPE_1__* reg; } ;
typedef scalar_t__ phandle_t ;
typedef int pcell_t ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ xref; } ;


 int ENXIO ;
 struct syr827_softc* device_get_softc (int ) ;

__attribute__((used)) static int
syr827_regdev_map(device_t dev, phandle_t xref, int ncells, pcell_t *cells,
    intptr_t *num)
{
 struct syr827_softc *sc;

 sc = device_get_softc(dev);

 if (sc->reg->xref != xref)
  return (ENXIO);

 *num = 0;

 return (0);
}
