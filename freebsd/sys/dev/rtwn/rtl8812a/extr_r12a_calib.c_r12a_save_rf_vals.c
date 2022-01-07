
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct rtwn_softc {int nrxchains; } ;


 int R12A_TXAGC_TABLE_SELECT ;
 int rtwn_bb_setbits (struct rtwn_softc*,int ,int,int ) ;
 int rtwn_rf_read (struct rtwn_softc*,int,int const) ;

void
r12a_save_rf_vals(struct rtwn_softc *sc, uint32_t vals[],
    const uint8_t regs[], int size)
{
 int c, i;


 rtwn_bb_setbits(sc, R12A_TXAGC_TABLE_SELECT, 0x80000000, 0);

 for (c = 0; c < sc->nrxchains; c++)
  for (i = 0; i < size; i++)
   vals[c * size + i] = rtwn_rf_read(sc, c, regs[i]);
}
