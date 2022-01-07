
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct rl_softc {scalar_t__ rl_type; int rl_dev; } ;
typedef int device_t ;


 int CSR_READ_1 (struct rl_softc*,int const) ;
 int CSR_READ_2 (struct rl_softc*,int ) ;







 scalar_t__ RL_8139 ;
 int RL_ANAR ;
 int RL_ANER ;
 int RL_BMCR ;
 int RL_BMSR ;
 int RL_LPAR ;

 struct rl_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mii_bitbang_readreg (int ,int *,int,int) ;
 int rl_mii_bitbang_ops ;

__attribute__((used)) static int
rl_miibus_readreg(device_t dev, int phy, int reg)
{
 struct rl_softc *sc;
 uint16_t rl8139_reg;

 sc = device_get_softc(dev);

 if (sc->rl_type == RL_8139) {
  switch (reg) {
  case 132:
   rl8139_reg = RL_BMCR;
   break;
  case 131:
   rl8139_reg = RL_BMSR;
   break;
  case 135:
   rl8139_reg = RL_ANAR;
   break;
  case 134:
   rl8139_reg = RL_ANER;
   break;
  case 133:
   rl8139_reg = RL_LPAR;
   break;
  case 130:
  case 129:
   return (0);






  case 128:
   return (CSR_READ_1(sc, 128));
  default:
   device_printf(sc->rl_dev, "bad phy register\n");
   return (0);
  }
  return (CSR_READ_2(sc, rl8139_reg));
 }

 return (mii_bitbang_readreg(dev, &rl_mii_bitbang_ops, phy, reg));
}
