
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_bd {void* tx_bd_haddr_lo; void* tx_bd_haddr_hi; } ;
struct bce_softc {int tx_pages; int * tx_bd_chain_paddr; struct tx_bd** tx_bd_chain; scalar_t__ tx_full_count; scalar_t__ tx_hi_watermark; int max_tx_bd; scalar_t__ used_tx_bd; scalar_t__ tx_prod_bseq; scalar_t__ tx_cons; scalar_t__ tx_prod; } ;


 int BCE_ADDR_HI (int ) ;
 int BCE_ADDR_LO (int ) ;
 int BCE_INSANE_SEND ;
 int BCE_VERBOSE_LOAD ;
 int BCE_VERBOSE_RESET ;
 int BCE_VERBOSE_SEND ;
 int DBENTER (int) ;
 int DBEXIT (int) ;
 int DBRUN (scalar_t__) ;
 int DBRUNMSG (int ,int ) ;
 int TOTAL_TX_BD_ALLOC ;
 int USABLE_TX_BD_ALLOC ;
 size_t USABLE_TX_BD_PER_PAGE ;
 int bce_dump_tx_chain (struct bce_softc*,int ,int ) ;
 int bce_init_tx_context (struct bce_softc*) ;
 void* htole32 (int ) ;

__attribute__((used)) static int
bce_init_tx_chain(struct bce_softc *sc)
{
 struct tx_bd *txbd;
 int i, rc = 0;

 DBENTER(BCE_VERBOSE_RESET | BCE_VERBOSE_SEND | BCE_VERBOSE_LOAD);


 sc->tx_prod = 0;
 sc->tx_cons = 0;
 sc->tx_prod_bseq = 0;
 sc->used_tx_bd = 0;
 sc->max_tx_bd = USABLE_TX_BD_ALLOC;
 DBRUN(sc->tx_hi_watermark = 0);
 DBRUN(sc->tx_full_count = 0);
 for (i = 0; i < sc->tx_pages; i++) {
  int j;

  txbd = &sc->tx_bd_chain[i][USABLE_TX_BD_PER_PAGE];


  if (i == (sc->tx_pages - 1))
   j = 0;
  else
   j = i + 1;

  txbd->tx_bd_haddr_hi =
      htole32(BCE_ADDR_HI(sc->tx_bd_chain_paddr[j]));
  txbd->tx_bd_haddr_lo =
      htole32(BCE_ADDR_LO(sc->tx_bd_chain_paddr[j]));
 }

 bce_init_tx_context(sc);

 DBRUNMSG(BCE_INSANE_SEND, bce_dump_tx_chain(sc, 0, TOTAL_TX_BD_ALLOC));
 DBEXIT(BCE_VERBOSE_RESET | BCE_VERBOSE_SEND | BCE_VERBOSE_LOAD);

 return(rc);
}
