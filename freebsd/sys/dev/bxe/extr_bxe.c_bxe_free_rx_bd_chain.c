
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bxe_softc {int dummy; } ;
struct TYPE_4__ {int mbuf_alloc_rx; } ;
struct bxe_fastpath {TYPE_2__ eth_q_stats; TYPE_1__* rx_mbuf_chain; int * rx_mbuf_tag; struct bxe_softc* sc; } ;
struct TYPE_3__ {int * m; int * m_map; } ;


 int BUS_DMASYNC_POSTREAD ;
 int RX_BD_TOTAL ;
 int bus_dmamap_sync (int *,int *,int ) ;
 int bus_dmamap_unload (int *,int *) ;
 int m_freem (int *) ;

__attribute__((used)) static void
bxe_free_rx_bd_chain(struct bxe_fastpath *fp)
{
    struct bxe_softc *sc;
    int i;

    sc = fp->sc;

    if (fp->rx_mbuf_tag == ((void*)0)) {
        return;
    }


    for (i = 0; i < RX_BD_TOTAL; i++) {
        if (fp->rx_mbuf_chain[i].m_map != ((void*)0)) {
            bus_dmamap_sync(fp->rx_mbuf_tag,
                            fp->rx_mbuf_chain[i].m_map,
                            BUS_DMASYNC_POSTREAD);
            bus_dmamap_unload(fp->rx_mbuf_tag,
                              fp->rx_mbuf_chain[i].m_map);
        }

        if (fp->rx_mbuf_chain[i].m != ((void*)0)) {
            m_freem(fp->rx_mbuf_chain[i].m);
            fp->rx_mbuf_chain[i].m = ((void*)0);
            fp->eth_q_stats.mbuf_alloc_rx--;
        }
    }
}
