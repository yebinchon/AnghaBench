
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct rl_softc {int rl_dev; } ;
typedef int device_t ;


 int CSR_READ_1 (struct rl_softc*,int) ;
 int CSR_READ_4 (struct rl_softc*,int ) ;
 int CSR_WRITE_4 (struct rl_softc*,int ,int) ;
 int DELAY (int) ;
 int RL_GMEDIASTAT ;
 int RL_PHYAR ;
 int RL_PHYAR_BUSY ;
 int RL_PHYAR_PHYDATA ;
 int RL_PHY_TIMEOUT ;
 struct rl_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
re_gmii_readreg(device_t dev, int phy, int reg)
{
 struct rl_softc *sc;
 u_int32_t rval;
 int i;

 sc = device_get_softc(dev);



 if (reg == RL_GMEDIASTAT) {
  rval = CSR_READ_1(sc, RL_GMEDIASTAT);
  return (rval);
 }

 CSR_WRITE_4(sc, RL_PHYAR, reg << 16);

 for (i = 0; i < RL_PHY_TIMEOUT; i++) {
  rval = CSR_READ_4(sc, RL_PHYAR);
  if (rval & RL_PHYAR_BUSY)
   break;
  DELAY(25);
 }

 if (i == RL_PHY_TIMEOUT) {
  device_printf(sc->rl_dev, "PHY read failed\n");
  return (0);
 }




 DELAY(20);

 return (rval & RL_PHYAR_PHYDATA);
}
