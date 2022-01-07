
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct rl_softc {scalar_t__ rl_type; int rl_dev; } ;
typedef int device_t ;


 int BMCR_ISO ;
 int BMCR_LOOP ;
 int CSR_READ_1 (struct rl_softc*,int const) ;
 int CSR_READ_2 (struct rl_softc*,int) ;







 scalar_t__ RL_8139CPLUS ;
 scalar_t__ RL_8169 ;
 int RL_ANAR ;
 int RL_ANER ;
 int RL_BMCR ;
 int RL_BMSR ;
 int RL_LPAR ;

 struct rl_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int re_gmii_readreg (int ,int,int) ;

__attribute__((used)) static int
re_miibus_readreg(device_t dev, int phy, int reg)
{
 struct rl_softc *sc;
 u_int16_t rval = 0;
 u_int16_t re8139_reg = 0;

 sc = device_get_softc(dev);

 if (sc->rl_type == RL_8169) {
  rval = re_gmii_readreg(dev, phy, reg);
  return (rval);
 }

 switch (reg) {
 case 132:
  re8139_reg = RL_BMCR;
  break;
 case 131:
  re8139_reg = RL_BMSR;
  break;
 case 135:
  re8139_reg = RL_ANAR;
  break;
 case 134:
  re8139_reg = RL_ANER;
  break;
 case 133:
  re8139_reg = RL_LPAR;
  break;
 case 130:
 case 129:
  return (0);






 case 128:
  rval = CSR_READ_1(sc, 128);
  return (rval);
 default:
  device_printf(sc->rl_dev, "bad phy register\n");
  return (0);
 }
 rval = CSR_READ_2(sc, re8139_reg);
 if (sc->rl_type == RL_8139CPLUS && re8139_reg == RL_BMCR) {

  rval &= ~(BMCR_LOOP | BMCR_ISO);
 }
 return (rval);
}
