
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx_bd {void* rx_bd_haddr_lo; void* rx_bd_haddr_hi; } ;
struct bce_softc {int rx_pages; int * rx_bd_chain_map; int rx_bd_chain_tag; void* rx_empty_count; void* rx_low_watermark; int * rx_bd_chain_paddr; struct rx_bd** rx_bd_chain; void* max_rx_bd; void* free_rx_bd; scalar_t__ rx_prod_bseq; scalar_t__ rx_cons; scalar_t__ rx_prod; } ;


 int BCE_ADDR_HI (int ) ;
 int BCE_ADDR_LO (int ) ;
 int BCE_EXTREME_RECV ;
 int BCE_VERBOSE_CTX ;
 int BCE_VERBOSE_LOAD ;
 int BCE_VERBOSE_RECV ;
 int BCE_VERBOSE_RESET ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int DBENTER (int) ;
 int DBEXIT (int) ;
 int DBRUN (void*) ;
 int DBRUNMSG (int ,int ) ;
 int TOTAL_RX_BD_ALLOC ;
 void* USABLE_RX_BD_ALLOC ;
 size_t USABLE_RX_BD_PER_PAGE ;
 int bce_dump_rx_bd_chain (struct bce_softc*,int ,int ) ;
 int bce_fill_rx_chain (struct bce_softc*) ;
 int bce_init_rx_context (struct bce_softc*) ;
 int bus_dmamap_sync (int ,int ,int) ;
 void* htole32 (int ) ;

__attribute__((used)) static int
bce_init_rx_chain(struct bce_softc *sc)
{
 struct rx_bd *rxbd;
 int i, rc = 0;

 DBENTER(BCE_VERBOSE_RESET | BCE_VERBOSE_RECV | BCE_VERBOSE_LOAD |
     BCE_VERBOSE_CTX);


 sc->rx_prod = 0;
 sc->rx_cons = 0;
 sc->rx_prod_bseq = 0;
 sc->free_rx_bd = USABLE_RX_BD_ALLOC;
 sc->max_rx_bd = USABLE_RX_BD_ALLOC;


 for (i = 0; i < sc->rx_pages; i++) {
  int j;

  rxbd = &sc->rx_bd_chain[i][USABLE_RX_BD_PER_PAGE];


  if (i == (sc->rx_pages - 1))
   j = 0;
  else
   j = i + 1;


  rxbd->rx_bd_haddr_hi =
      htole32(BCE_ADDR_HI(sc->rx_bd_chain_paddr[j]));
  rxbd->rx_bd_haddr_lo =
      htole32(BCE_ADDR_LO(sc->rx_bd_chain_paddr[j]));
 }


 bce_fill_rx_chain(sc);

 DBRUN(sc->rx_low_watermark = USABLE_RX_BD_ALLOC);
 DBRUN(sc->rx_empty_count = 0);
 for (i = 0; i < sc->rx_pages; i++) {
  bus_dmamap_sync(sc->rx_bd_chain_tag, sc->rx_bd_chain_map[i],
      BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
 }

 bce_init_rx_context(sc);

 DBRUNMSG(BCE_EXTREME_RECV,
     bce_dump_rx_bd_chain(sc, 0, TOTAL_RX_BD_ALLOC));
 DBEXIT(BCE_VERBOSE_RESET | BCE_VERBOSE_RECV | BCE_VERBOSE_LOAD |
     BCE_VERBOSE_CTX);



 return(rc);
}
