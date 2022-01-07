
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dme_softc {scalar_t__ dme_rev; int* dme_macaddr; int dme_dev; } ;


 int BMCR_RESET ;
 int BPTR_BPHW (int) ;
 int BPTR_JPT (int) ;
 int DELAY (int) ;
 int DME_BPTR ;
 scalar_t__ DME_CHIP_DM9000B ;
 int DME_FCR ;
 int DME_FCTR ;
 int DME_GPCR ;
 int DME_GPR ;
 int DME_IMR ;
 int DME_INT_PHY ;
 int DME_ISR ;
 int DME_MAR (int) ;
 int DME_NCR ;
 int DME_NSR ;
 int DME_PAR (int) ;
 int DME_RCR ;
 int DME_SMCR ;
 int DME_TCR ;
 int DSPCR_INIT ;
 int ETHER_ADDR_LEN ;
 int FCTR_HWOT (int) ;
 int FCTR_LWOT (int) ;
 int IMR_PAR ;
 int IMR_PRI ;
 int IMR_PTI ;
 int MII_BMCR ;
 int MII_DME_DSPCR ;
 int NCR_LBK_NORMAL ;
 int NSR_TX1END ;
 int NSR_TX2END ;
 int NSR_WAKEST ;
 int RCR_DIS_CRC ;
 int RCR_DIS_LONG ;
 int RCR_RXEN ;
 int dme_miibus_readreg (int ,int ,int ) ;
 int dme_miibus_writereg (int ,int ,int ,int) ;
 int dme_write_reg (struct dme_softc*,int ,int) ;

__attribute__((used)) static void
dme_config(struct dme_softc *sc)
{
 int i;


 dme_write_reg(sc, DME_IMR, IMR_PAR);


 dme_write_reg(sc, DME_GPCR, 1);
 dme_write_reg(sc, DME_GPR, 0);
 dme_write_reg(sc, DME_NCR, NCR_LBK_NORMAL);

 dme_write_reg(sc, DME_TCR, 0);

 dme_write_reg(sc, DME_BPTR, BPTR_BPHW(3) | BPTR_JPT(0x0f));

 dme_write_reg(sc, DME_FCTR, FCTR_HWOT(0x3) | FCTR_LWOT(0x08));

 dme_write_reg(sc, DME_FCR, 0xff);

 dme_write_reg(sc, DME_SMCR, 0);

 dme_write_reg(sc, DME_NSR, NSR_WAKEST | NSR_TX2END | NSR_TX1END);

 dme_write_reg(sc, DME_ISR, 0xff);

 for (i = 0; i < 8; i++)
  dme_write_reg(sc, DME_MAR(i), 0xff);

 for (i = 0; i < ETHER_ADDR_LEN; i++)
  dme_write_reg(sc, DME_PAR(i), sc->dme_macaddr[i]);

 dme_write_reg(sc, DME_RCR, RCR_DIS_LONG | RCR_DIS_CRC | RCR_RXEN);


 dme_write_reg(sc, DME_IMR, IMR_PAR | IMR_PRI | IMR_PTI);
}
