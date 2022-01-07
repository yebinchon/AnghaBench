
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef void* uint16_t ;
struct vtcon_softc {int vtcon_flags; } ;
struct virtio_console_control {void* value; void* event; int id; } ;


 int VTCON_FLAG_MULTIPORT ;
 int vtcon_ctrl_poll (struct vtcon_softc*,struct virtio_console_control*) ;

__attribute__((used)) static void
vtcon_ctrl_send_control(struct vtcon_softc *sc, uint32_t portid,
    uint16_t event, uint16_t value)
{
 struct virtio_console_control control;

 if ((sc->vtcon_flags & VTCON_FLAG_MULTIPORT) == 0)
  return;

 control.id = portid;
 control.event = event;
 control.value = value;

 vtcon_ctrl_poll(sc, &control);
}
