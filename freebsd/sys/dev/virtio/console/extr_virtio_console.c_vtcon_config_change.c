
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtcon_softc {int vtcon_flags; } ;
typedef int device_t ;


 int VTCON_FLAG_MULTIPORT ;
 int VTCON_FLAG_SIZE ;
 struct vtcon_softc* device_get_softc (int ) ;
 int vtcon_port_update_console_size (struct vtcon_softc*) ;

__attribute__((used)) static int
vtcon_config_change(device_t dev)
{
 struct vtcon_softc *sc;

 sc = device_get_softc(dev);





 if ((sc->vtcon_flags & VTCON_FLAG_MULTIPORT) == 0) {
  if (sc->vtcon_flags & VTCON_FLAG_SIZE)
   vtcon_port_update_console_size(sc);
 }

 return (0);
}
