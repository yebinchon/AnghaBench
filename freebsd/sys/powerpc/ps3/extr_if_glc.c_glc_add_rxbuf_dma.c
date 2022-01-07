
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct glc_softc {scalar_t__ sc_rxdmadesc_phys; TYPE_2__* sc_rxdmadesc; struct glc_rxsoft* sc_rxsoft; } ;
struct TYPE_3__ {int ds_len; int ds_addr; } ;
struct glc_rxsoft {int rxs_desc_slot; scalar_t__ rxs_desc; TYPE_1__ segment; } ;
struct glc_dmadesc {int dummy; } ;
struct TYPE_4__ {int cmd_stat; scalar_t__ next; int len; int paddr; } ;


 int GELIC_DESCR_OWNED ;
 int GLC_MAX_RX_PACKETS ;
 int bzero (TYPE_2__*,int) ;

__attribute__((used)) static int
glc_add_rxbuf_dma(struct glc_softc *sc, int idx)
{
 struct glc_rxsoft *rxs = &sc->sc_rxsoft[idx];

 bzero(&sc->sc_rxdmadesc[idx], sizeof(sc->sc_rxdmadesc[idx]));
 sc->sc_rxdmadesc[idx].paddr = rxs->segment.ds_addr;
 sc->sc_rxdmadesc[idx].len = rxs->segment.ds_len;
 sc->sc_rxdmadesc[idx].next = sc->sc_rxdmadesc_phys +
     ((idx + 1) % GLC_MAX_RX_PACKETS)*sizeof(sc->sc_rxdmadesc[idx]);
 sc->sc_rxdmadesc[idx].cmd_stat = GELIC_DESCR_OWNED;

 rxs->rxs_desc_slot = idx;
 rxs->rxs_desc = sc->sc_rxdmadesc_phys + idx*sizeof(struct glc_dmadesc);

        return (0);
}
