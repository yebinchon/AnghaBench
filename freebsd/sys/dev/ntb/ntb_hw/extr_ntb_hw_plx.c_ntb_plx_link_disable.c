
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ntb_plx_softc {int port; int conf_res; scalar_t__ link; } ;
typedef int device_t ;


 int PLX_PORT_CONTROL (struct ntb_plx_softc*) ;
 int bus_read_4 (int ,int) ;
 int bus_write_4 (int ,int,int) ;
 struct ntb_plx_softc* device_get_softc (int ) ;

__attribute__((used)) static int
ntb_plx_link_disable(device_t dev)
{
 struct ntb_plx_softc *sc = device_get_softc(dev);
 uint32_t reg, val;


 if (sc->link)
  return (0);

 reg = PLX_PORT_CONTROL(sc);
 val = bus_read_4(sc->conf_res, reg);
 val |= (1 << (sc->port & 7));
 bus_write_4(sc->conf_res, reg, val);
 return (0);
}
