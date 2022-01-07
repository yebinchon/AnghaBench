
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct vtcon_softc {int dummy; } ;
struct vtcon_port {int vtcport_id; struct vtcon_softc* vtcport_sc; } ;


 int vtcon_ctrl_send_control (struct vtcon_softc*,int ,int ,int ) ;

__attribute__((used)) static void
vtcon_port_submit_event(struct vtcon_port *port, uint16_t event,
    uint16_t value)
{
 struct vtcon_softc *sc;

 sc = port->vtcport_sc;

 vtcon_ctrl_send_control(sc, port->vtcport_id, event, value);
}
