
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sfxge_port {size_t link_mode; } ;
struct sfxge_softc {TYPE_1__* ifnet; struct sfxge_port port; } ;
typedef size_t efx_link_mode_t ;
struct TYPE_2__ {int if_baudrate; } ;


 int LINK_STATE_DOWN ;
 int LINK_STATE_UP ;
 scalar_t__ SFXGE_LINK_UP (struct sfxge_softc*) ;
 int if_link_state_change (TYPE_1__*,int) ;
 int * sfxge_link_baudrate ;

void
sfxge_mac_link_update(struct sfxge_softc *sc, efx_link_mode_t mode)
{
 struct sfxge_port *port;
 int link_state;

 port = &sc->port;

 if (port->link_mode == mode)
  return;

 port->link_mode = mode;


 link_state = (SFXGE_LINK_UP(sc) ? LINK_STATE_UP : LINK_STATE_DOWN);
 sc->ifnet->if_baudrate = sfxge_link_baudrate[port->link_mode];
 if_link_state_change(sc->ifnet, link_state);
}
