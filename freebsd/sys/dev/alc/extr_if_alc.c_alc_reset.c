
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct alc_softc {int alc_flags; int alc_rev; TYPE_1__* alc_ident; int alc_dev; } ;
struct TYPE_2__ {scalar_t__ deviceid; } ;


 int ALC_FLAG_AR816X_FAMILY ;
 int ALC_IDLE_STATUS ;
 int ALC_MASTER_CFG ;
 int ALC_MBOX_RD0_PROD_IDX ;
 int ALC_MISC ;
 int ALC_MISC3 ;
 int ALC_PM_CFG ;
 int ALC_RESET_TIMEOUT ;
 int ALC_SERDES_LOCK ;
 scalar_t__ AR816X_REV (int) ;
 scalar_t__ AR816X_REV_A1 ;
 int CSR_READ_4 (struct alc_softc*,int ) ;
 int CSR_WRITE_4 (struct alc_softc*,int ,int) ;
 int DELAY (int) ;
 scalar_t__ DEVICEID_ATHEROS_AR8151_V2 ;
 scalar_t__ DEVICEID_ATHEROS_AR8152_B ;
 int IDLE_STATUS_RXMAC ;
 int IDLE_STATUS_RXQ ;
 int IDLE_STATUS_TXMAC ;
 int IDLE_STATUS_TXQ ;
 int MASTER_CLK_SEL_DIS ;
 int MASTER_OOB_DIS_OFF ;
 int MASTER_RESET ;
 int MISC3_25M_BY_SW ;
 int MISC3_25M_NOTO_INTNL ;
 int MISC_INTNLOSC_OPEN ;
 int MISC_ISO_ENB ;
 int PM_CFG_ASPM_L0S_ENB ;
 int PM_CFG_ASPM_L1_ENB ;
 int SERDES_MAC_CLK_SLOWDOWN ;
 int SERDES_PHY_CLK_SLOWDOWN ;
 int alc_osc_reset (struct alc_softc*) ;
 int device_printf (int ,char*,...) ;

__attribute__((used)) static void
alc_reset(struct alc_softc *sc)
{
 uint32_t pmcfg, reg;
 int i;

 pmcfg = 0;
 if ((sc->alc_flags & ALC_FLAG_AR816X_FAMILY) != 0) {

  CSR_WRITE_4(sc, ALC_MBOX_RD0_PROD_IDX, 1);
  if (AR816X_REV(sc->alc_rev) <= AR816X_REV_A1 &&
      (sc->alc_rev & 0x01) != 0) {

   pmcfg = CSR_READ_4(sc, ALC_PM_CFG);
   if ((pmcfg & (PM_CFG_ASPM_L0S_ENB | PM_CFG_ASPM_L1_ENB))
       != 0) {
    pmcfg &= ~(PM_CFG_ASPM_L0S_ENB |
        PM_CFG_ASPM_L1_ENB);
    CSR_WRITE_4(sc, ALC_PM_CFG, pmcfg);
   }
  }
 }
 reg = CSR_READ_4(sc, ALC_MASTER_CFG);
 reg |= MASTER_OOB_DIS_OFF | MASTER_RESET;
 CSR_WRITE_4(sc, ALC_MASTER_CFG, reg);

 if ((sc->alc_flags & ALC_FLAG_AR816X_FAMILY) != 0) {
  for (i = ALC_RESET_TIMEOUT; i > 0; i--) {
   DELAY(10);
   if (CSR_READ_4(sc, ALC_MBOX_RD0_PROD_IDX) == 0)
    break;
  }
  if (i == 0)
   device_printf(sc->alc_dev, "MAC reset timeout!\n");
 }
 for (i = ALC_RESET_TIMEOUT; i > 0; i--) {
  DELAY(10);
  if ((CSR_READ_4(sc, ALC_MASTER_CFG) & MASTER_RESET) == 0)
   break;
 }
 if (i == 0)
  device_printf(sc->alc_dev, "master reset timeout!\n");

 for (i = ALC_RESET_TIMEOUT; i > 0; i--) {
  reg = CSR_READ_4(sc, ALC_IDLE_STATUS);
  if ((reg & (IDLE_STATUS_RXMAC | IDLE_STATUS_TXMAC |
      IDLE_STATUS_RXQ | IDLE_STATUS_TXQ)) == 0)
   break;
  DELAY(10);
 }
 if (i == 0)
  device_printf(sc->alc_dev, "reset timeout(0x%08x)!\n", reg);

 if ((sc->alc_flags & ALC_FLAG_AR816X_FAMILY) != 0) {
  if (AR816X_REV(sc->alc_rev) <= AR816X_REV_A1 &&
      (sc->alc_rev & 0x01) != 0) {
   reg = CSR_READ_4(sc, ALC_MASTER_CFG);
   reg |= MASTER_CLK_SEL_DIS;
   CSR_WRITE_4(sc, ALC_MASTER_CFG, reg);

   if ((pmcfg & (PM_CFG_ASPM_L0S_ENB | PM_CFG_ASPM_L1_ENB))
       != 0)
    CSR_WRITE_4(sc, ALC_PM_CFG, pmcfg);
  }

  alc_osc_reset(sc);
  reg = CSR_READ_4(sc, ALC_MISC3);
  reg &= ~MISC3_25M_BY_SW;
  reg |= MISC3_25M_NOTO_INTNL;
  CSR_WRITE_4(sc, ALC_MISC3, reg);
  reg = CSR_READ_4(sc, ALC_MISC);
  reg &= ~MISC_INTNLOSC_OPEN;
  if (AR816X_REV(sc->alc_rev) <= AR816X_REV_A1)
   reg &= ~MISC_ISO_ENB;
  CSR_WRITE_4(sc, ALC_MISC, reg);
  DELAY(20);
 }
 if ((sc->alc_flags & ALC_FLAG_AR816X_FAMILY) != 0 ||
     sc->alc_ident->deviceid == DEVICEID_ATHEROS_AR8152_B ||
     sc->alc_ident->deviceid == DEVICEID_ATHEROS_AR8151_V2)
  CSR_WRITE_4(sc, ALC_SERDES_LOCK,
      CSR_READ_4(sc, ALC_SERDES_LOCK) | SERDES_MAC_CLK_SLOWDOWN |
      SERDES_PHY_CLK_SLOWDOWN);
}
