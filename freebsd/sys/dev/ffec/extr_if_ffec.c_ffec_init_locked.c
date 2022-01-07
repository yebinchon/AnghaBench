
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ifnet {int if_drv_flags; } ;
struct ffec_softc {int rxdesc_ring_paddr; int txdesc_ring_paddr; int fecflags; int ffec_callout; int mii_softc; scalar_t__ txcount; scalar_t__ tx_idx_tail; scalar_t__ tx_idx_head; scalar_t__ rx_idx; int rxbuf_align; struct ifnet* ifp; } ;


 int ETHER_ALIGN ;
 int FECFLAG_RACC ;
 int FEC_ECR_DBSWP ;
 int FEC_ECR_ETHEREN ;
 int FEC_ECR_REG ;
 int FEC_FTRL_REG ;
 int FEC_IEM_REG ;
 int FEC_IER_EBERR ;
 int FEC_IER_REG ;
 int FEC_IER_RXF ;
 int FEC_IER_TXF ;
 int FEC_MIBC_DIS ;
 int FEC_MIBC_REG ;
 int FEC_MRBR_REG ;
 int FEC_MRBR_R_BUF_SIZE_SHIFT ;
 int FEC_OPD_REG ;
 int FEC_RACC_REG ;
 int FEC_RACC_SHIFT16 ;
 int FEC_RCR_MAX_FL_SHIFT ;
 int FEC_RCR_REG ;
 int FEC_RDAR_RDAR ;
 int FEC_RDAR_REG ;
 int FEC_RDSR_REG ;
 int FEC_TCR_REG ;
 int FEC_TDSR_REG ;
 int FEC_TFWR_REG ;
 int FEC_TFWR_STRFWD ;
 int FEC_TFWR_TWFR_128BYTE ;
 int FFEC_ASSERT_LOCKED (struct ffec_softc*) ;
 int IFF_DRV_RUNNING ;
 int MCLBYTES ;
 int RD4 (struct ffec_softc*,int ) ;
 int WR4 (struct ffec_softc*,int ,int) ;
 int callout_reset (int *,int ,int ,struct ffec_softc*) ;
 int ffec_clear_stats (struct ffec_softc*) ;
 int ffec_setup_rxfilter (struct ffec_softc*) ;
 int ffec_tick ;
 int hz ;
 int mii_mediachg (int ) ;
 int min (int,int) ;
 int roundup (int ,int ) ;

__attribute__((used)) static void
ffec_init_locked(struct ffec_softc *sc)
{
 struct ifnet *ifp = sc->ifp;
 uint32_t maxbuf, maxfl, regval;

 FFEC_ASSERT_LOCKED(sc);
 maxbuf = MCLBYTES - roundup(ETHER_ALIGN, sc->rxbuf_align);
 maxfl = min(maxbuf, 0x7ff);

 if (ifp->if_drv_flags & IFF_DRV_RUNNING)
  return;


 WR4(sc, FEC_IEM_REG, 0x00000000);
 WR4(sc, FEC_IER_REG, 0xffffffff);




 ffec_setup_rxfilter(sc);
 WR4(sc, FEC_TFWR_REG, FEC_TFWR_STRFWD | FEC_TFWR_TWFR_128BYTE);





 WR4(sc, FEC_RCR_REG, (maxfl << FEC_RCR_MAX_FL_SHIFT));







 WR4(sc, FEC_TCR_REG, 0);






 WR4(sc, FEC_OPD_REG, 0x00010020);
 WR4(sc, FEC_MRBR_REG, maxfl << FEC_MRBR_R_BUF_SIZE_SHIFT);






 WR4(sc, FEC_FTRL_REG, maxfl);
 sc->rx_idx = 0;
 sc->tx_idx_head = sc->tx_idx_tail = 0;
 sc->txcount = 0;
 WR4(sc, FEC_RDSR_REG, sc->rxdesc_ring_paddr);
 WR4(sc, FEC_TDSR_REG, sc->txdesc_ring_paddr);
 WR4(sc, FEC_IEM_REG, FEC_IER_TXF | FEC_IER_RXF | FEC_IER_EBERR);





 regval = RD4(sc, FEC_MIBC_REG);
 WR4(sc, FEC_MIBC_REG, regval | FEC_MIBC_DIS);
 ffec_clear_stats(sc);
 WR4(sc, FEC_MIBC_REG, regval & ~FEC_MIBC_DIS);

 if (sc->fecflags & FECFLAG_RACC) {



  regval = RD4(sc, FEC_RACC_REG);
  WR4(sc, FEC_RACC_REG, regval | FEC_RACC_SHIFT16);
 }
 regval = RD4(sc, FEC_ECR_REG);

 regval |= FEC_ECR_DBSWP;

 regval |= FEC_ECR_ETHEREN;
 WR4(sc, FEC_ECR_REG, regval);

 ifp->if_drv_flags |= IFF_DRV_RUNNING;





 mii_mediachg(sc->mii_softc);
 callout_reset(&sc->ffec_callout, hz, ffec_tick, sc);





 WR4(sc, FEC_RDAR_REG, FEC_RDAR_RDAR);
}
