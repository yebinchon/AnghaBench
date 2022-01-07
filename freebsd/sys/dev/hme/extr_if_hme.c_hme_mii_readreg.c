
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct hme_softc {int sc_dev; } ;
typedef int device_t ;


 int BUS_SPACE_BARRIER_READ ;
 int BUS_SPACE_BARRIER_WRITE ;
 int DELAY (int) ;
 int HME_MIFI_CFG ;
 int HME_MIFI_FO ;
 int HME_MIF_BARRIER (struct hme_softc*,int ,int,int) ;
 int HME_MIF_CFG_PHY ;
 int HME_MIF_FO_DATA ;
 int HME_MIF_FO_OPC_SHIFT ;
 int HME_MIF_FO_PHYAD_SHIFT ;
 int HME_MIF_FO_REGAD_SHIFT ;
 int HME_MIF_FO_ST_SHIFT ;
 int HME_MIF_FO_TALSB ;
 int HME_MIF_FO_TAMSB ;
 int HME_MIF_READ_4 (struct hme_softc*,int ) ;
 int HME_MIF_WRITE_4 (struct hme_softc*,int ,int) ;
 int HME_PHYAD_EXTERNAL ;
 int MII_COMMAND_READ ;
 int MII_COMMAND_START ;
 struct hme_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

int
hme_mii_readreg(device_t dev, int phy, int reg)
{
 struct hme_softc *sc;
 int n;
 u_int32_t v;

 sc = device_get_softc(dev);

 v = HME_MIF_READ_4(sc, HME_MIFI_CFG);
 if (phy == HME_PHYAD_EXTERNAL)
  v |= HME_MIF_CFG_PHY;
 else
  v &= ~HME_MIF_CFG_PHY;
 HME_MIF_WRITE_4(sc, HME_MIFI_CFG, v);


 v = (MII_COMMAND_START << HME_MIF_FO_ST_SHIFT) |
     HME_MIF_FO_TAMSB |
     (MII_COMMAND_READ << HME_MIF_FO_OPC_SHIFT) |
     (phy << HME_MIF_FO_PHYAD_SHIFT) |
     (reg << HME_MIF_FO_REGAD_SHIFT);

 HME_MIF_WRITE_4(sc, HME_MIFI_FO, v);
 HME_MIF_BARRIER(sc, HME_MIFI_FO, 4,
     BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
 for (n = 0; n < 100; n++) {
  DELAY(1);
  v = HME_MIF_READ_4(sc, HME_MIFI_FO);
  if (v & HME_MIF_FO_TALSB)
   return (v & HME_MIF_FO_DATA);
 }

 device_printf(sc->sc_dev, "mii_read timeout\n");
 return (0);
}
