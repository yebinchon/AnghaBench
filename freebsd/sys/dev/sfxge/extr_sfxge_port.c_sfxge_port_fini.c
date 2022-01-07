
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int decode_buf; int dma_buf; } ;
struct TYPE_3__ {int decode_buf; int dma_buf; } ;
struct sfxge_port {scalar_t__ init_state; int * sc; TYPE_2__ mac_stats; TYPE_1__ phy_stats; int link_mode; } ;
struct sfxge_softc {struct sfxge_port port; } ;
typedef int efsys_mem_t ;


 int EFX_LINK_UNKNOWN ;
 int KASSERT (int,char*) ;
 int M_SFXGE ;
 scalar_t__ SFXGE_PORT_INITIALIZED ;
 int SFXGE_PORT_LOCK_DESTROY (struct sfxge_port*) ;
 scalar_t__ SFXGE_PORT_UNINITIALIZED ;
 int free (int ,int ) ;
 int sfxge_dma_free (int *) ;

void
sfxge_port_fini(struct sfxge_softc *sc)
{
 struct sfxge_port *port;
 efsys_mem_t *esmp;

 port = &sc->port;
 esmp = &port->mac_stats.dma_buf;

 KASSERT(port->init_state == SFXGE_PORT_INITIALIZED,
     ("Port not initialized"));

 port->init_state = SFXGE_PORT_UNINITIALIZED;

 port->link_mode = EFX_LINK_UNKNOWN;


 sfxge_dma_free(&port->phy_stats.dma_buf);
 free(port->phy_stats.decode_buf, M_SFXGE);

 sfxge_dma_free(esmp);
 free(port->mac_stats.decode_buf, M_SFXGE);

 SFXGE_PORT_LOCK_DESTROY(port);

 port->sc = ((void*)0);
}
