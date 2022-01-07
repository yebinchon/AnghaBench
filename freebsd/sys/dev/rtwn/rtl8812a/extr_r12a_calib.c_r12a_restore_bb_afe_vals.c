
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct rtwn_softc {int dummy; } ;


 int R12A_TXAGC_TABLE_SELECT ;
 int rtwn_bb_setbits (struct rtwn_softc*,int ,int,int ) ;
 int rtwn_bb_write (struct rtwn_softc*,int const,int ) ;

void
r12a_restore_bb_afe_vals(struct rtwn_softc *sc, uint32_t vals[],
    const uint16_t regs[], int size)
{
 int i;


 rtwn_bb_setbits(sc, R12A_TXAGC_TABLE_SELECT, 0x80000000, 0);

 for (i = 0; i < size; i++)
  rtwn_bb_write(sc, regs[i], vals[i]);
}
