
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sge_softc {int sge_dev; } ;
typedef int device_t ;


 int CSR_READ_4 (struct sge_softc*,int ) ;
 int CSR_WRITE_4 (struct sge_softc*,int ,int) ;
 int DELAY (int) ;
 int GMIIControl ;
 int GMI_DATA ;
 int GMI_DATA_SHIFT ;
 int GMI_OP_RD ;
 int GMI_PHY_SHIFT ;
 int GMI_REG_SHIFT ;
 int GMI_REQ ;
 int SGE_TIMEOUT ;
 struct sge_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static int
sge_miibus_readreg(device_t dev, int phy, int reg)
{
 struct sge_softc *sc;
 uint32_t val;
 int i;

 sc = device_get_softc(dev);
 CSR_WRITE_4(sc, GMIIControl, (phy << GMI_PHY_SHIFT) |
     (reg << GMI_REG_SHIFT) | GMI_OP_RD | GMI_REQ);
 DELAY(10);
 for (i = 0; i < SGE_TIMEOUT; i++) {
  val = CSR_READ_4(sc, GMIIControl);
  if ((val & GMI_REQ) == 0)
   break;
  DELAY(10);
 }
 if (i == SGE_TIMEOUT) {
  device_printf(sc->sge_dev, "PHY read timeout : %d\n", reg);
  return (0);
 }
 return ((val & GMI_DATA) >> GMI_DATA_SHIFT);
}
