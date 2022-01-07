
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rl_softc {int rl_dev; TYPE_1__* rl_hwrev; int rl_cfg4; int rl_cfg3; } ;
struct TYPE_2__ {int rl_rev; } ;


 int CSR_READ_1 (struct rl_softc*,int ) ;
 int CSR_WRITE_1 (struct rl_softc*,int ,int) ;
 int RL_CFG3_JUMBO_EN0 ;
 int RL_CFG4_JUMBO_EN1 ;
 int RL_EECMD ;
 int RL_EEMODE_OFF ;
 int RL_EEMODE_WRITECFG ;


 int RL_HWREV_8168E_VL ;
 int pci_set_max_read_req (int ,int) ;

__attribute__((used)) static void
re_set_jumbo(struct rl_softc *sc, int jumbo)
{

 if (sc->rl_hwrev->rl_rev == RL_HWREV_8168E_VL) {
  pci_set_max_read_req(sc->rl_dev, 4096);
  return;
 }

 CSR_WRITE_1(sc, RL_EECMD, RL_EEMODE_WRITECFG);
 if (jumbo != 0) {
  CSR_WRITE_1(sc, sc->rl_cfg3, CSR_READ_1(sc, sc->rl_cfg3) |
      RL_CFG3_JUMBO_EN0);
  switch (sc->rl_hwrev->rl_rev) {
  case 129:
   break;
  case 128:
   CSR_WRITE_1(sc, sc->rl_cfg4,
       CSR_READ_1(sc, sc->rl_cfg4) | 0x01);
   break;
  default:
   CSR_WRITE_1(sc, sc->rl_cfg4,
       CSR_READ_1(sc, sc->rl_cfg4) | RL_CFG4_JUMBO_EN1);
  }
 } else {
  CSR_WRITE_1(sc, sc->rl_cfg3, CSR_READ_1(sc, sc->rl_cfg3) &
      ~RL_CFG3_JUMBO_EN0);
  switch (sc->rl_hwrev->rl_rev) {
  case 129:
   break;
  case 128:
   CSR_WRITE_1(sc, sc->rl_cfg4,
       CSR_READ_1(sc, sc->rl_cfg4) & ~0x01);
   break;
  default:
   CSR_WRITE_1(sc, sc->rl_cfg4,
       CSR_READ_1(sc, sc->rl_cfg4) & ~RL_CFG4_JUMBO_EN1);
  }
 }
 CSR_WRITE_1(sc, RL_EECMD, RL_EEMODE_OFF);

 switch (sc->rl_hwrev->rl_rev) {
 case 129:
  pci_set_max_read_req(sc->rl_dev, 4096);
  break;
 default:
  if (jumbo != 0)
   pci_set_max_read_req(sc->rl_dev, 512);
  else
   pci_set_max_read_req(sc->rl_dev, 4096);
 }
}
