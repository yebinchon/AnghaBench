
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bxe_softc {int dummy; } ;
struct TYPE_6__ {int mbuf_alloc_tpa; } ;
struct bxe_fastpath {TYPE_3__ eth_q_stats; TYPE_2__* rx_tpa_info; int * rx_mbuf_tag; struct bxe_softc* sc; } ;
struct TYPE_4__ {int * m; int * m_map; } ;
struct TYPE_5__ {TYPE_1__ bd; } ;


 int BUS_DMASYNC_POSTREAD ;
 int MAX_AGG_QS (struct bxe_softc*) ;
 int bus_dmamap_sync (int *,int *,int ) ;
 int bus_dmamap_unload (int *,int *) ;
 int m_freem (int *) ;

__attribute__((used)) static void
bxe_free_tpa_pool(struct bxe_fastpath *fp)
{
    struct bxe_softc *sc;
    int i, max_agg_queues;

    sc = fp->sc;

    if (fp->rx_mbuf_tag == ((void*)0)) {
        return;
    }

    max_agg_queues = MAX_AGG_QS(sc);


    for (i = 0; i < max_agg_queues; i++) {
        if (fp->rx_tpa_info[i].bd.m_map != ((void*)0)) {
            bus_dmamap_sync(fp->rx_mbuf_tag,
                            fp->rx_tpa_info[i].bd.m_map,
                            BUS_DMASYNC_POSTREAD);
            bus_dmamap_unload(fp->rx_mbuf_tag,
                              fp->rx_tpa_info[i].bd.m_map);
        }

        if (fp->rx_tpa_info[i].bd.m != ((void*)0)) {
            m_freem(fp->rx_tpa_info[i].bd.m);
            fp->rx_tpa_info[i].bd.m = ((void*)0);
            fp->eth_q_stats.mbuf_alloc_tpa--;
        }
    }
}
