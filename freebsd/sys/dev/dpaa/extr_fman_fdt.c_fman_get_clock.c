
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int dev; } ;
struct fman_softc {TYPE_1__ sc_base; } ;
typedef int phandle_t ;
typedef scalar_t__ pcell_t ;
typedef int fman_clock ;
typedef int device_t ;


 scalar_t__ OF_getprop (int ,char*,scalar_t__*,int) ;
 int device_printf (int ,char*) ;
 int ofw_bus_get_node (int ) ;

uint32_t
fman_get_clock(struct fman_softc *sc)
{
 device_t dev;
 phandle_t node;
 pcell_t fman_clock;

 dev = sc->sc_base.dev;
 node = ofw_bus_get_node(dev);

 if ((OF_getprop(node, "clock-frequency", &fman_clock,
     sizeof(fman_clock)) <= 0) || (fman_clock == 0)) {
  device_printf(dev, "could not acquire correct frequency "
      "from DTS\n");

  return (0);
 }

 return ((uint32_t)fman_clock);
}
