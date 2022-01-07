
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dma_buf; scalar_t__ update_time; } ;
struct sfxge_port {scalar_t__ init_state; int link_mode; TYPE_1__ mac_stats; } ;
struct sfxge_softc {int * enp; struct sfxge_port port; } ;
typedef int efx_nic_t ;


 int B_FALSE ;
 int B_TRUE ;
 int EFX_LINK_UNKNOWN ;
 int KASSERT (int,char*) ;
 scalar_t__ SFXGE_PORT_INITIALIZED ;
 int SFXGE_PORT_LOCK (struct sfxge_port*) ;
 scalar_t__ SFXGE_PORT_STARTED ;
 int SFXGE_PORT_UNLOCK (struct sfxge_port*) ;
 int efx_filter_fini (int *) ;
 int efx_mac_drain (int *,int ) ;
 int efx_mac_stats_periodic (int *,int *,int ,int ) ;
 int efx_port_fini (int *) ;

void
sfxge_port_stop(struct sfxge_softc *sc)
{
 struct sfxge_port *port;
 efx_nic_t *enp;

 port = &sc->port;
 enp = sc->enp;

 SFXGE_PORT_LOCK(port);

 KASSERT(port->init_state == SFXGE_PORT_STARTED,
     ("port not started"));

 port->init_state = SFXGE_PORT_INITIALIZED;

 port->mac_stats.update_time = 0;


 (void)efx_mac_drain(enp, B_TRUE);

 (void)efx_mac_stats_periodic(enp, &port->mac_stats.dma_buf, 0, B_FALSE);

 port->link_mode = EFX_LINK_UNKNOWN;


 efx_port_fini(enp);

 efx_filter_fini(enp);

 SFXGE_PORT_UNLOCK(port);
}
