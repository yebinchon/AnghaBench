
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int ELINK_DEBUG_P1 (struct bxe_softc*,char*,int) ;
 int ELINK_NIG_STATUS_EMAC0_MI_INT ;
 scalar_t__ NIG_REG_LATCH_STATUS_0 ;
 scalar_t__ NIG_REG_STATUS_INTERRUPT_PORT0 ;
 int REG_RD (struct bxe_softc*,scalar_t__) ;
 int REG_WR (struct bxe_softc*,scalar_t__,int) ;
 int elink_bits_dis (struct bxe_softc*,scalar_t__,int ) ;
 int elink_bits_en (struct bxe_softc*,scalar_t__,int ) ;

__attribute__((used)) static void elink_rearm_latch_signal(struct bxe_softc *sc, uint8_t port,
         uint8_t exp_mi_int)
{
 uint32_t latch_status = 0;






 latch_status = REG_RD(sc,
        NIG_REG_LATCH_STATUS_0 + port*8);
 ELINK_DEBUG_P1(sc, "latch_status = 0x%x\n", latch_status);

 if (exp_mi_int)
  elink_bits_en(sc,
         NIG_REG_STATUS_INTERRUPT_PORT0
         + port*4,
         ELINK_NIG_STATUS_EMAC0_MI_INT);
 else
  elink_bits_dis(sc,
          NIG_REG_STATUS_INTERRUPT_PORT0
          + port*4,
          ELINK_NIG_STATUS_EMAC0_MI_INT);

 if (latch_status & 1) {


  REG_WR(sc, NIG_REG_LATCH_STATUS_0 + port*8,
         (latch_status & 0xfffe) | (latch_status & 1));
 }

}
