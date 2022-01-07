
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int port ;
typedef int phandle_t ;
struct TYPE_5__ {int num_ports; int fixed_mask; int dev; } ;
typedef TYPE_1__ e6000sw_softc_t ;


 int ENXIO ;
 scalar_t__ OF_getencprop (int ,char*,void*,int) ;
 int device_printf (int ,char*,int) ;
 scalar_t__ e6000sw_parse_ethernet (TYPE_1__*,int ,int) ;
 scalar_t__ e6000sw_parse_fixed_link (TYPE_1__*,int ,int) ;

__attribute__((used)) static int
e6000sw_parse_child_fdt(e6000sw_softc_t *sc, phandle_t child, int *pport)
{
 uint32_t port;

 if (pport == ((void*)0))
  return (ENXIO);

 if (OF_getencprop(child, "reg", (void *)&port, sizeof(port)) < 0)
  return (ENXIO);
 if (port >= sc->num_ports)
  return (ENXIO);
 *pport = port;

 if (e6000sw_parse_fixed_link(sc, child, port) != 0)
  return (ENXIO);

 if (e6000sw_parse_ethernet(sc, child, port) != 0)
  return (ENXIO);

 if ((sc->fixed_mask & (1 << port)) != 0)
  device_printf(sc->dev, "fixed port at %d\n", port);
 else
  device_printf(sc->dev, "PHY at port %d\n", port);

 return (0);
}
