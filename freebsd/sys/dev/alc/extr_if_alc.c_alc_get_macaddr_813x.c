
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct alc_softc {int alc_phyaddr; int alc_dev; TYPE_1__* alc_ident; } ;
struct TYPE_2__ {int deviceid; } ;


 int ALC_LTSSM_ID_CFG ;
 int ALC_MASTER_CFG ;
 int ALC_MII_DBG_ADDR ;
 int ALC_MII_DBG_DATA ;
 int ALC_OPT_CFG ;
 int ALC_TWSI_CFG ;
 int ALC_TWSI_DEBUG ;
 int ALC_WOL_CFG ;
 int CSR_READ_4 (struct alc_softc*,int ) ;
 int CSR_WRITE_4 (struct alc_softc*,int ,int) ;
 int DELAY (int) ;






 int LTSSM_ID_WRO_ENB ;
 int MASTER_OTP_SEL ;
 int OPT_CFG_CLK_ENB ;
 int TWSI_CFG_SW_LD_START ;
 int TWSI_DEBUG_DEV_EXIST ;
 int alc_get_macaddr_par (struct alc_softc*) ;
 int alc_miibus_readreg (int ,int ,int ) ;
 int alc_miibus_writereg (int ,int ,int ,int) ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
alc_get_macaddr_813x(struct alc_softc *sc)
{
 uint32_t opt;
 uint16_t val;
 int eeprom, i;

 eeprom = 0;
 opt = CSR_READ_4(sc, ALC_OPT_CFG);
 if ((CSR_READ_4(sc, ALC_MASTER_CFG) & MASTER_OTP_SEL) != 0 &&
     (CSR_READ_4(sc, ALC_TWSI_DEBUG) & TWSI_DEBUG_DEV_EXIST) != 0) {




  eeprom++;
  switch (sc->alc_ident->deviceid) {
  case 133:
  case 132:
   if ((opt & OPT_CFG_CLK_ENB) == 0) {
    opt |= OPT_CFG_CLK_ENB;
    CSR_WRITE_4(sc, ALC_OPT_CFG, opt);
    CSR_READ_4(sc, ALC_OPT_CFG);
    DELAY(1000);
   }
   break;
  case 131:
  case 130:
  case 129:
  case 128:
   alc_miibus_writereg(sc->alc_dev, sc->alc_phyaddr,
       ALC_MII_DBG_ADDR, 0x00);
   val = alc_miibus_readreg(sc->alc_dev, sc->alc_phyaddr,
       ALC_MII_DBG_DATA);
   alc_miibus_writereg(sc->alc_dev, sc->alc_phyaddr,
       ALC_MII_DBG_DATA, val & 0xFF7F);
   alc_miibus_writereg(sc->alc_dev, sc->alc_phyaddr,
       ALC_MII_DBG_ADDR, 0x3B);
   val = alc_miibus_readreg(sc->alc_dev, sc->alc_phyaddr,
       ALC_MII_DBG_DATA);
   alc_miibus_writereg(sc->alc_dev, sc->alc_phyaddr,
       ALC_MII_DBG_DATA, val | 0x0008);
   DELAY(20);
   break;
  }

  CSR_WRITE_4(sc, ALC_LTSSM_ID_CFG,
      CSR_READ_4(sc, ALC_LTSSM_ID_CFG) & ~LTSSM_ID_WRO_ENB);
  CSR_WRITE_4(sc, ALC_WOL_CFG, 0);
  CSR_READ_4(sc, ALC_WOL_CFG);

  CSR_WRITE_4(sc, ALC_TWSI_CFG, CSR_READ_4(sc, ALC_TWSI_CFG) |
      TWSI_CFG_SW_LD_START);
  for (i = 100; i > 0; i--) {
   DELAY(1000);
   if ((CSR_READ_4(sc, ALC_TWSI_CFG) &
       TWSI_CFG_SW_LD_START) == 0)
    break;
  }
  if (i == 0)
   device_printf(sc->alc_dev,
       "reloading EEPROM timeout!\n");
 } else {
  if (bootverbose)
   device_printf(sc->alc_dev, "EEPROM not found!\n");
 }
 if (eeprom != 0) {
  switch (sc->alc_ident->deviceid) {
  case 133:
  case 132:
   if ((opt & OPT_CFG_CLK_ENB) != 0) {
    opt &= ~OPT_CFG_CLK_ENB;
    CSR_WRITE_4(sc, ALC_OPT_CFG, opt);
    CSR_READ_4(sc, ALC_OPT_CFG);
    DELAY(1000);
   }
   break;
  case 131:
  case 130:
  case 129:
  case 128:
   alc_miibus_writereg(sc->alc_dev, sc->alc_phyaddr,
       ALC_MII_DBG_ADDR, 0x00);
   val = alc_miibus_readreg(sc->alc_dev, sc->alc_phyaddr,
       ALC_MII_DBG_DATA);
   alc_miibus_writereg(sc->alc_dev, sc->alc_phyaddr,
       ALC_MII_DBG_DATA, val | 0x0080);
   alc_miibus_writereg(sc->alc_dev, sc->alc_phyaddr,
       ALC_MII_DBG_ADDR, 0x3B);
   val = alc_miibus_readreg(sc->alc_dev, sc->alc_phyaddr,
       ALC_MII_DBG_DATA);
   alc_miibus_writereg(sc->alc_dev, sc->alc_phyaddr,
       ALC_MII_DBG_DATA, val & 0xFFF7);
   DELAY(20);
   break;
  }
 }

 alc_get_macaddr_par(sc);
}
