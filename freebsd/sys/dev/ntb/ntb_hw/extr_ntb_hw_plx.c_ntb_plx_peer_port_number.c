
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_plx_softc {scalar_t__ link; } ;
typedef int device_t ;


 int EINVAL ;
 struct ntb_plx_softc* device_get_softc (int ) ;

__attribute__((used)) static int
ntb_plx_peer_port_number(device_t dev, int pidx)
{
 struct ntb_plx_softc *sc = device_get_softc(dev);

 if (pidx != 0)
  return (-EINVAL);

 return (sc->link ? 0 : 1);
}
