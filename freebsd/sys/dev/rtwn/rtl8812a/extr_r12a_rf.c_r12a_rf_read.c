
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct rtwn_softc {int dummy; } ;


 int MS (int,int ) ;
 int R12A_CCA_ON_SEC ;
 int R12A_HSPI_READBACK (int) ;
 int R12A_HSSI_PARAM1 (int) ;
 int R12A_HSSI_PARAM1_PI ;
 int R12A_HSSI_PARAM2 ;
 int R12A_HSSI_PARAM2_READ_ADDR_MASK ;
 int R12A_LSSI_READBACK (int) ;
 int R92C_LSSI_READBACK_DATA ;
 int R92C_RF_AC ;
 int rtwn_bb_read (struct rtwn_softc*,int ) ;
 int rtwn_bb_setbits (struct rtwn_softc*,int ,int,int) ;

uint32_t
r12a_rf_read(struct rtwn_softc *sc, int chain, uint8_t addr)
{
 uint32_t pi_mode, val;


 if (addr != R92C_RF_AC)
  rtwn_bb_setbits(sc, R12A_CCA_ON_SEC, 0, 0x08);

 val = rtwn_bb_read(sc, R12A_HSSI_PARAM1(chain));
 pi_mode = (val & R12A_HSSI_PARAM1_PI) ? 1 : 0;

 rtwn_bb_setbits(sc, R12A_HSSI_PARAM2,
     R12A_HSSI_PARAM2_READ_ADDR_MASK, addr);

 val = rtwn_bb_read(sc, pi_mode ? R12A_HSPI_READBACK(chain) :
     R12A_LSSI_READBACK(chain));


 if (addr != R92C_RF_AC)
  rtwn_bb_setbits(sc, R12A_CCA_ON_SEC, 0x08, 0);

 return (MS(val, R92C_LSSI_READBACK_DATA));
}
