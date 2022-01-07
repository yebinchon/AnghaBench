
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rtwn_softc {int nrxchains; } ;


 int KASSERT (int,char*) ;
 int R12A_MAX_NRXCHAINS ;
 int R12A_PMPD (int) ;
 int R12A_RFE (int) ;
 int R12A_SLEEP_NAV (int) ;
 int R12A_TXAGC_TABLE_SELECT ;
 int nitems (int ) ;
 int r12a_iq_afe_regs ;
 int r12a_iq_bb_regs ;
 int r12a_iq_rf_regs ;
 int r12a_restore_bb_afe_vals (struct rtwn_softc*,int*,int ,int) ;
 int r12a_restore_rf_vals (struct rtwn_softc*,int*,int ,int) ;
 int r12a_save_bb_afe_vals (struct rtwn_softc*,int*,int ,int) ;
 int r12a_save_rf_vals (struct rtwn_softc*,int*,int ,int) ;
 int rtwn_bb_read (struct rtwn_softc*,int) ;
 int rtwn_bb_setbits (struct rtwn_softc*,int,int ,int) ;
 int rtwn_bb_write (struct rtwn_softc*,int,int) ;
 int rtwn_iq_config_mac (struct rtwn_softc*) ;
 int rtwn_iq_tx (struct rtwn_softc*) ;

void
r12a_iq_calib_sw(struct rtwn_softc *sc)
{

 uint32_t bb_vals[nitems(r12a_iq_bb_regs)];
 uint32_t afe_vals[nitems(r12a_iq_afe_regs)];
 uint32_t rf_vals[nitems(r12a_iq_rf_regs) * 2];
 uint32_t rfe[2];

 KASSERT(sc->nrxchains <= 2,
     ("nrxchains > %d (%d)\n", 2, sc->nrxchains));


 r12a_save_bb_afe_vals(sc, bb_vals, r12a_iq_bb_regs,
     nitems(r12a_iq_bb_regs));


 rtwn_bb_setbits(sc, R12A_TXAGC_TABLE_SELECT, 0, 0x80000000);
 rfe[0] = rtwn_bb_read(sc, R12A_RFE(0));
 rfe[1] = rtwn_bb_read(sc, R12A_RFE(1));

 r12a_save_bb_afe_vals(sc, afe_vals, r12a_iq_afe_regs,
     nitems(r12a_iq_afe_regs));
 r12a_save_rf_vals(sc, rf_vals, r12a_iq_rf_regs,
     nitems(r12a_iq_rf_regs));







 r12a_restore_rf_vals(sc, rf_vals, r12a_iq_rf_regs,
     nitems(r12a_iq_rf_regs));
 r12a_restore_bb_afe_vals(sc, afe_vals, r12a_iq_afe_regs,
     nitems(r12a_iq_afe_regs));


 rtwn_bb_setbits(sc, R12A_TXAGC_TABLE_SELECT, 0, 0x80000000);


 rtwn_bb_write(sc, R12A_SLEEP_NAV(0), 0);
 rtwn_bb_write(sc, R12A_PMPD(0), 0);
 rtwn_bb_write(sc, 0xc88, 0);
 rtwn_bb_write(sc, 0xc8c, 0x3c000000);
 rtwn_bb_setbits(sc, 0xc90, 0, 0x00000080);
 rtwn_bb_setbits(sc, 0xcc4, 0, 0x20040000);
 rtwn_bb_setbits(sc, 0xcc8, 0, 0x20000000);


 rtwn_bb_write(sc, R12A_SLEEP_NAV(1), 0);
 rtwn_bb_write(sc, R12A_PMPD(1), 0);
 rtwn_bb_write(sc, 0xe88, 0);
 rtwn_bb_write(sc, 0xe8c, 0x3c000000);
 rtwn_bb_setbits(sc, 0xe90, 0, 0x00000080);
 rtwn_bb_setbits(sc, 0xec4, 0, 0x20040000);
 rtwn_bb_setbits(sc, 0xec8, 0, 0x20000000);

 rtwn_bb_write(sc, R12A_RFE(0), rfe[0]);
 rtwn_bb_write(sc, R12A_RFE(1), rfe[1]);

 r12a_restore_bb_afe_vals(sc, bb_vals, r12a_iq_bb_regs,
     nitems(r12a_iq_bb_regs));

}
