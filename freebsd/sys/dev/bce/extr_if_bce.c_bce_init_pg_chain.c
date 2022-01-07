
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rx_bd {void* rx_bd_haddr_lo; void* rx_bd_haddr_hi; } ;
struct bce_softc {int pg_pages; int rx_bd_mbuf_data_len; int * pg_bd_chain_map; int pg_bd_chain_tag; int * pg_bd_chain_paddr; struct rx_bd** pg_bd_chain; void* pg_empty_count; void* max_pg_bd; void* pg_low_watermark; void* free_pg_bd; scalar_t__ pg_cons; scalar_t__ pg_prod; } ;


 int BCE_ADDR_HI (int ) ;
 int BCE_ADDR_LO (int ) ;
 scalar_t__ BCE_CHIP_NUM (struct bce_softc*) ;
 scalar_t__ BCE_CHIP_NUM_5709 ;
 int BCE_EXTREME_RECV ;
 int BCE_L2CTX_RX_NX_PG_BDHADDR_HI ;
 int BCE_L2CTX_RX_NX_PG_BDHADDR_LO ;
 int BCE_L2CTX_RX_PG_BUF_SIZE ;
 int BCE_L2CTX_RX_RBDC_JUMBO_KEY ;
 int BCE_L2CTX_RX_RBDC_KEY ;
 int BCE_MQ_MAP_L2_3 ;
 int BCE_MQ_MAP_L2_3_DEFAULT ;
 int BCE_VERBOSE_CTX ;
 int BCE_VERBOSE_LOAD ;
 int BCE_VERBOSE_RECV ;
 int BCE_VERBOSE_RESET ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CTX_WR (struct bce_softc*,int ,int ,int) ;
 int DBENTER (int) ;
 int DBEXIT (int) ;
 int DBRUN (void*) ;
 int DBRUNMSG (int ,int ) ;
 int GET_CID_ADDR (int ) ;
 int MCLBYTES ;
 int REG_WR (struct bce_softc*,int ,int ) ;
 int RX_CID ;
 int TOTAL_PG_BD_ALLOC ;
 void* USABLE_PG_BD_ALLOC ;
 size_t USABLE_PG_BD_PER_PAGE ;
 int bce_dump_pg_chain (struct bce_softc*,int ,int ) ;
 int bce_fill_pg_chain (struct bce_softc*) ;
 int bus_dmamap_sync (int ,int ,int) ;
 void* htole32 (int) ;

__attribute__((used)) static int
bce_init_pg_chain(struct bce_softc *sc)
{
 struct rx_bd *pgbd;
 int i, rc = 0;
 u32 val;

 DBENTER(BCE_VERBOSE_RESET | BCE_VERBOSE_RECV | BCE_VERBOSE_LOAD |
  BCE_VERBOSE_CTX);


 sc->pg_prod = 0;
 sc->pg_cons = 0;
 sc->free_pg_bd = USABLE_PG_BD_ALLOC;
 sc->max_pg_bd = USABLE_PG_BD_ALLOC;
 DBRUN(sc->pg_low_watermark = sc->max_pg_bd);
 DBRUN(sc->pg_empty_count = 0);


 for (i = 0; i < sc->pg_pages; i++) {
  int j;

  pgbd = &sc->pg_bd_chain[i][USABLE_PG_BD_PER_PAGE];


  if (i == (sc->pg_pages - 1))
   j = 0;
  else
   j = i + 1;


  pgbd->rx_bd_haddr_hi =
      htole32(BCE_ADDR_HI(sc->pg_bd_chain_paddr[j]));
  pgbd->rx_bd_haddr_lo =
      htole32(BCE_ADDR_LO(sc->pg_bd_chain_paddr[j]));
 }


 if (BCE_CHIP_NUM(sc) == BCE_CHIP_NUM_5709)
  REG_WR(sc, BCE_MQ_MAP_L2_3, BCE_MQ_MAP_L2_3_DEFAULT);

 CTX_WR(sc, GET_CID_ADDR(RX_CID), BCE_L2CTX_RX_PG_BUF_SIZE, 0);


 val = (sc->rx_bd_mbuf_data_len << 16) | MCLBYTES;
 CTX_WR(sc, GET_CID_ADDR(RX_CID), BCE_L2CTX_RX_PG_BUF_SIZE, val);


 CTX_WR(sc, GET_CID_ADDR(RX_CID), BCE_L2CTX_RX_RBDC_KEY,
  BCE_L2CTX_RX_RBDC_JUMBO_KEY);


 val = BCE_ADDR_HI(sc->pg_bd_chain_paddr[0]);
 CTX_WR(sc, GET_CID_ADDR(RX_CID), BCE_L2CTX_RX_NX_PG_BDHADDR_HI, val);
 val = BCE_ADDR_LO(sc->pg_bd_chain_paddr[0]);
 CTX_WR(sc, GET_CID_ADDR(RX_CID), BCE_L2CTX_RX_NX_PG_BDHADDR_LO, val);


 bce_fill_pg_chain(sc);

 for (i = 0; i < sc->pg_pages; i++) {
  bus_dmamap_sync(sc->pg_bd_chain_tag, sc->pg_bd_chain_map[i],
      BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
 }

 DBRUNMSG(BCE_EXTREME_RECV,
     bce_dump_pg_chain(sc, 0, TOTAL_PG_BD_ALLOC));
 DBEXIT(BCE_VERBOSE_RESET | BCE_VERBOSE_RECV | BCE_VERBOSE_LOAD |
  BCE_VERBOSE_CTX);
 return(rc);
}
