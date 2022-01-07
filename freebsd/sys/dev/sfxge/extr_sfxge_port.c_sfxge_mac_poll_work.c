
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_port {scalar_t__ init_state; } ;
struct sfxge_softc {struct sfxge_port port; int * enp; } ;
typedef int efx_nic_t ;
typedef int efx_link_mode_t ;


 int SFXGE_PORT_LOCK (struct sfxge_port*) ;
 scalar_t__ SFXGE_PORT_STARTED ;
 int SFXGE_PORT_UNLOCK (struct sfxge_port*) ;
 scalar_t__ __predict_false (int) ;
 int efx_port_poll (int *,int *) ;
 int sfxge_mac_link_update (struct sfxge_softc*,int ) ;

__attribute__((used)) static void
sfxge_mac_poll_work(void *arg, int npending)
{
 struct sfxge_softc *sc;
 efx_nic_t *enp;
 struct sfxge_port *port;
 efx_link_mode_t mode;

 sc = (struct sfxge_softc *)arg;
 enp = sc->enp;
 port = &sc->port;

 SFXGE_PORT_LOCK(port);

 if (__predict_false(port->init_state != SFXGE_PORT_STARTED))
  goto done;


 (void)efx_port_poll(enp, &mode);
 sfxge_mac_link_update(sc, mode);

done:
 SFXGE_PORT_UNLOCK(port);
}
