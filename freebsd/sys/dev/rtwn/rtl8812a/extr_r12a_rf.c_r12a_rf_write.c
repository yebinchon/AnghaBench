
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct rtwn_softc {int dummy; } ;


 int R12A_LSSI_PARAM (int) ;
 int R88E_LSSI_PARAM_ADDR ;
 int R92C_LSSI_PARAM_DATA ;
 int SM (int ,int ) ;
 int rtwn_bb_write (struct rtwn_softc*,int ,int) ;

void
r12a_rf_write(struct rtwn_softc *sc, int chain, uint8_t addr,
    uint32_t val)
{
 rtwn_bb_write(sc, R12A_LSSI_PARAM(chain),
     SM(R88E_LSSI_PARAM_ADDR, addr) |
     SM(R92C_LSSI_PARAM_DATA, val));
}
