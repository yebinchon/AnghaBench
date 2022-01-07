
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct rl_softc {scalar_t__ rl_type; int rl_dev; } ;
typedef int device_t ;


 int BMCR_ISO ;
 int BMCR_LOOP ;
 int CSR_WRITE_2 (struct rl_softc*,int ,int) ;







 scalar_t__ RL_8139CPLUS ;
 scalar_t__ RL_8169 ;
 int RL_ANAR ;
 int RL_ANER ;
 int RL_BMCR ;
 int RL_BMSR ;
 int RL_LPAR ;
 struct rl_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int re_gmii_writereg (int ,int,int,int) ;

__attribute__((used)) static int
re_miibus_writereg(device_t dev, int phy, int reg, int data)
{
 struct rl_softc *sc;
 u_int16_t re8139_reg = 0;
 int rval = 0;

 sc = device_get_softc(dev);

 if (sc->rl_type == RL_8169) {
  rval = re_gmii_writereg(dev, phy, reg, data);
  return (rval);
 }

 switch (reg) {
 case 131:
  re8139_reg = RL_BMCR;
  if (sc->rl_type == RL_8139CPLUS) {

   data &= ~(BMCR_LOOP | BMCR_ISO);
  }
  break;
 case 130:
  re8139_reg = RL_BMSR;
  break;
 case 134:
  re8139_reg = RL_ANAR;
  break;
 case 133:
  re8139_reg = RL_ANER;
  break;
 case 132:
  re8139_reg = RL_LPAR;
  break;
 case 129:
 case 128:
  return (0);
  break;
 default:
  device_printf(sc->rl_dev, "bad phy register\n");
  return (0);
 }
 CSR_WRITE_2(sc, re8139_reg, data);
 return (0);
}
