
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct rtwn_softc {int dummy; } ;


 int R88E_LSSI_PARAM_ADDR ;
 int R92C_LSSI_PARAM (int) ;
 int R92C_LSSI_PARAM_DATA ;
 int SM (int ,int ) ;
 int rtwn_bb_setbits (struct rtwn_softc*,int,int,int) ;
 int rtwn_bb_write (struct rtwn_softc*,int ,int) ;

void
r92e_rf_write(struct rtwn_softc *sc, int chain, uint8_t addr, uint32_t val)
{

 rtwn_bb_setbits(sc, 0x818, 0x20000, 0);
 rtwn_bb_write(sc, R92C_LSSI_PARAM(chain),
     SM(R88E_LSSI_PARAM_ADDR, addr) | SM(R92C_LSSI_PARAM_DATA, val));
 rtwn_bb_setbits(sc, 0x818, 0, 0x20000);
}
