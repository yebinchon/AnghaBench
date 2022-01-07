
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_port {scalar_t__ init_state; } ;
struct sfxge_softc {struct sfxge_port port; } ;


 int SFXGE_PORT_LOCK (struct sfxge_port*) ;
 scalar_t__ SFXGE_PORT_STARTED ;
 int SFXGE_PORT_UNLOCK (struct sfxge_port*) ;
 scalar_t__ __predict_true (int) ;
 int sfxge_mac_filter_set_locked (struct sfxge_softc*) ;

int
sfxge_mac_filter_set(struct sfxge_softc *sc)
{
 struct sfxge_port *port = &sc->port;
 int rc;

 SFXGE_PORT_LOCK(port);
 if (__predict_true(port->init_state == SFXGE_PORT_STARTED))
  rc = sfxge_mac_filter_set_locked(sc);
 else
  rc = 0;
 SFXGE_PORT_UNLOCK(port);
 return (rc);
}
