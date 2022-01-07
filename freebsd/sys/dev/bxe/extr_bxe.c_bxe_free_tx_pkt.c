
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint16_t ;
struct eth_tx_start_bd {int nbd; } ;
struct bxe_sw_tx_bd {size_t first_bd; int * m; int m_map; } ;
struct bxe_softc {int dummy; } ;
struct TYPE_4__ {int tx_chain_lost_mbuf; int mbuf_alloc_tx; } ;
struct bxe_fastpath {TYPE_2__ eth_q_stats; TYPE_1__* tx_chain; int tx_mbuf_tag; struct bxe_sw_tx_bd* tx_mbuf_chain; } ;
struct TYPE_3__ {struct eth_tx_start_bd start_bd; } ;


 size_t TX_BD (size_t) ;
 scalar_t__ __predict_true (int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int le16toh (int ) ;
 int m_freem (int *) ;

__attribute__((used)) static uint16_t
bxe_free_tx_pkt(struct bxe_softc *sc,
                struct bxe_fastpath *fp,
                uint16_t idx)
{
    struct bxe_sw_tx_bd *tx_buf = &fp->tx_mbuf_chain[idx];
    struct eth_tx_start_bd *tx_start_bd;
    uint16_t bd_idx = TX_BD(tx_buf->first_bd);
    uint16_t new_cons;
    int nbd;


    bus_dmamap_unload(fp->tx_mbuf_tag, tx_buf->m_map);

    tx_start_bd = &fp->tx_chain[bd_idx].start_bd;
    nbd = le16toh(tx_start_bd->nbd) - 1;

    new_cons = (tx_buf->first_bd + nbd);


    if (__predict_true(tx_buf->m != ((void*)0))) {
        m_freem(tx_buf->m);
        fp->eth_q_stats.mbuf_alloc_tx--;
    } else {
        fp->eth_q_stats.tx_chain_lost_mbuf++;
    }

    tx_buf->m = ((void*)0);
    tx_buf->first_bd = 0;

    return (new_cons);
}
