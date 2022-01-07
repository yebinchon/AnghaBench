
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_plx_softc {scalar_t__ link; } ;
typedef int device_t ;


 struct ntb_plx_softc* device_get_softc (int ) ;

__attribute__((used)) static int
ntb_plx_port_number(device_t dev)
{
 struct ntb_plx_softc *sc = device_get_softc(dev);

 return (sc->link ? 1 : 0);
}
