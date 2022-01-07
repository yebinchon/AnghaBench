
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_softc {int sc_tx_timer; int free_sbuf; int txbuf_dmat; int free_shdr; int hdr_dmat; int cmd_map; int cmd_dmat; } ;
struct ipw_soft_hdr {int m; int ni; int map; } ;
struct ipw_soft_buf {int m; int ni; int map; } ;
struct ipw_soft_bd {int type; struct ipw_soft_hdr* priv; } ;


 int BUS_DMASYNC_POSTWRITE ;



 int IPW_SBD_TYPE_NOASSOC ;
 int SLIST_INSERT_HEAD (int *,struct ipw_soft_hdr*,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int ieee80211_tx_complete (int ,int ,int ) ;
 int next ;

__attribute__((used)) static void
ipw_release_sbd(struct ipw_softc *sc, struct ipw_soft_bd *sbd)
{
 struct ipw_soft_hdr *shdr;
 struct ipw_soft_buf *sbuf;

 switch (sbd->type) {
 case 130:
  bus_dmamap_sync(sc->cmd_dmat, sc->cmd_map,
      BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(sc->cmd_dmat, sc->cmd_map);
  break;

 case 128:
  shdr = sbd->priv;
  bus_dmamap_sync(sc->hdr_dmat, shdr->map, BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(sc->hdr_dmat, shdr->map);
  SLIST_INSERT_HEAD(&sc->free_shdr, shdr, next);
  break;

 case 129:
  sbuf = sbd->priv;
  bus_dmamap_sync(sc->txbuf_dmat, sbuf->map,
      BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(sc->txbuf_dmat, sbuf->map);
  SLIST_INSERT_HEAD(&sc->free_sbuf, sbuf, next);

  ieee80211_tx_complete(sbuf->ni, sbuf->m, 0 );

  sc->sc_tx_timer = 0;
  break;
 }

 sbd->type = IPW_SBD_TYPE_NOASSOC;
}
