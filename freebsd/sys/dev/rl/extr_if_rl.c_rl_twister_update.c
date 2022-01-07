
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int member_0; int member_1; int member_2; int member_3; } ;
typedef TYPE_1__ uint32_t ;
typedef int uint16_t ;
struct rl_softc {int rl_twister; int rl_twist_row; size_t rl_twist_col; } ;



 int CSR_READ_2 (struct rl_softc*,int ) ;
 int CSR_WRITE_2 (struct rl_softc*,int ,int ) ;
 int CSR_WRITE_4 (struct rl_softc*,int ,TYPE_1__ const) ;




 int RL_CSCFG ;
 int RL_CSCFG_LINK_DOWN_CMD ;
 int RL_CSCFG_LINK_DOWN_OFF_CMD ;
 int RL_CSCFG_LINK_OK ;
 int RL_CSCFG_ROW1 ;
 int RL_CSCFG_ROW2 ;
 int RL_CSCFG_ROW3 ;
 int RL_CSCFG_STATUS ;
 int RL_NWAYTST ;
 TYPE_1__ const RL_NWAYTST_CBL_TEST ;
 TYPE_1__ const RL_NWAYTST_RESET ;
 int RL_PARA78 ;
 TYPE_1__ const RL_PARA78_DEF ;
 int RL_PARA7C ;
 TYPE_1__ const RL_PARA7C_DEF ;
 TYPE_1__ const RL_PARA7C_RETUNE ;


__attribute__((used)) static void
rl_twister_update(struct rl_softc *sc)
{
 uint16_t linktest;




 static const uint32_t param[4][4] = {
  {0xcb39de43, 0xcb39ce43, 0xfb38de03, 0xcb38de43},
  {0xcb39de43, 0xcb39ce43, 0xcb39ce83, 0xcb39ce83},
  {0xcb39de43, 0xcb39ce43, 0xcb39ce83, 0xcb39ce83},
  {0xbb39de43, 0xbb39ce43, 0xbb39ce83, 0xbb39ce83}
 };







 switch (sc->rl_twister)
 {
 case 133:





  if (CSR_READ_2(sc, RL_CSCFG) & RL_CSCFG_LINK_OK) {
   CSR_WRITE_2(sc, RL_CSCFG, RL_CSCFG_LINK_DOWN_OFF_CMD);
   sc->rl_twister = 131;
  } else {
   CSR_WRITE_2(sc, RL_CSCFG, RL_CSCFG_LINK_DOWN_CMD);
   CSR_WRITE_4(sc, RL_NWAYTST, RL_NWAYTST_CBL_TEST);
   CSR_WRITE_4(sc, RL_PARA78, RL_PARA78_DEF);
   CSR_WRITE_4(sc, RL_PARA7C, RL_PARA7C_DEF);
   sc->rl_twister = 132;
  }
  break;
 case 131:




  linktest = CSR_READ_2(sc, RL_CSCFG) & RL_CSCFG_STATUS;
  if (linktest == RL_CSCFG_ROW3)
   sc->rl_twist_row = 3;
  else if (linktest == RL_CSCFG_ROW2)
   sc->rl_twist_row = 2;
  else if (linktest == RL_CSCFG_ROW1)
   sc->rl_twist_row = 1;
  else
   sc->rl_twist_row = 0;
  sc->rl_twist_col = 0;
  sc->rl_twister = 128;
  break;
 case 128:
  if (sc->rl_twist_col == 0)
   CSR_WRITE_4(sc, RL_NWAYTST, RL_NWAYTST_RESET);
  CSR_WRITE_4(sc, RL_PARA7C,
      param[sc->rl_twist_row][sc->rl_twist_col]);
  if (++sc->rl_twist_col == 4) {
   if (sc->rl_twist_row == 3)
    sc->rl_twister = 130;
   else
    sc->rl_twister = 132;
  }
  break;
 case 130:




  linktest = CSR_READ_2(sc, RL_CSCFG) & RL_CSCFG_STATUS;
  if (linktest == RL_CSCFG_ROW3)
   sc->rl_twister = 132;
  else {
   CSR_WRITE_4(sc, RL_PARA7C, RL_PARA7C_RETUNE);
   sc->rl_twister = 129;
  }
  break;
 case 129:

  CSR_WRITE_4(sc, RL_NWAYTST, RL_NWAYTST_CBL_TEST);
  CSR_WRITE_4(sc, RL_PARA78, RL_PARA78_DEF);
  CSR_WRITE_4(sc, RL_PARA7C, RL_PARA7C_DEF);
  CSR_WRITE_4(sc, RL_NWAYTST, RL_NWAYTST_RESET);
  sc->rl_twist_row--;
  sc->rl_twist_col = 0;
  sc->rl_twister = 128;
  break;

 case 132:
  break;
 }

}
