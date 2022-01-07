
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {struct fxp_rx* rx_tail; struct fxp_rx* rx_head; } ;
struct fxp_softc {TYPE_3__ fxp_desc; int fxp_rxmtag; } ;
struct fxp_rx {struct fxp_rx* rx_next; int rx_map; int rx_addr; TYPE_2__* rx_mbuf; } ;
struct fxp_rfa {scalar_t__ rfa_control; int link_addr; } ;
struct TYPE_4__ {scalar_t__ ext_buf; } ;
struct TYPE_5__ {TYPE_1__ m_ext; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 scalar_t__ RFA_ALIGNMENT_FUDGE ;
 int bus_dmamap_sync (int ,int ,int) ;
 int le32enc (int *,int ) ;

__attribute__((used)) static void
fxp_add_rfabuf(struct fxp_softc *sc, struct fxp_rx *rxp)
{
 struct fxp_rfa *p_rfa;
 struct fxp_rx *p_rx;





 if (sc->fxp_desc.rx_head != ((void*)0)) {
  p_rx = sc->fxp_desc.rx_tail;
  p_rfa = (struct fxp_rfa *)
      (p_rx->rx_mbuf->m_ext.ext_buf + RFA_ALIGNMENT_FUDGE);
  p_rx->rx_next = rxp;
  le32enc(&p_rfa->link_addr, rxp->rx_addr);
  p_rfa->rfa_control = 0;
  bus_dmamap_sync(sc->fxp_rxmtag, p_rx->rx_map,
      BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
 } else {
  rxp->rx_next = ((void*)0);
  sc->fxp_desc.rx_head = rxp;
 }
 sc->fxp_desc.rx_tail = rxp;
}
