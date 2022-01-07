
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct ichwd_softc {int tco_version; unsigned int timeout; int device; } ;


 int TCO_RLD1_TMR_MAX ;
 int TCO_RLD2_TMR_MAX ;
 unsigned int TCO_RLD_TMR_MIN ;
 int TCO_TMR1 ;
 int TCO_TMR2 ;
 int ichwd_read_tco_1 (struct ichwd_softc*,int ) ;
 int ichwd_read_tco_2 (struct ichwd_softc*,int ) ;
 int ichwd_verbose_printf (int ,char*,unsigned int) ;
 int ichwd_write_tco_1 (struct ichwd_softc*,int ,int) ;
 int ichwd_write_tco_2 (struct ichwd_softc*,int ,int) ;

__attribute__((used)) static __inline void
ichwd_tmr_set(struct ichwd_softc *sc, unsigned int timeout)
{

 if (timeout < TCO_RLD_TMR_MIN)
  timeout = TCO_RLD_TMR_MIN;

 if (sc->tco_version == 1) {
  uint8_t tmr_val8 = ichwd_read_tco_1(sc, TCO_TMR1);

  tmr_val8 &= (~TCO_RLD1_TMR_MAX & 0xff);
  if (timeout > TCO_RLD1_TMR_MAX)
   timeout = TCO_RLD1_TMR_MAX;
  tmr_val8 |= timeout;
  ichwd_write_tco_1(sc, TCO_TMR1, tmr_val8);
 } else {
  uint16_t tmr_val16 = ichwd_read_tco_2(sc, TCO_TMR2);

  tmr_val16 &= (~TCO_RLD2_TMR_MAX & 0xffff);
  if (timeout > TCO_RLD2_TMR_MAX)
   timeout = TCO_RLD2_TMR_MAX;
  tmr_val16 |= timeout;
  ichwd_write_tco_2(sc, TCO_TMR2, tmr_val16);
 }

 sc->timeout = timeout;

 ichwd_verbose_printf(sc->device, "timeout set to %u ticks\n", timeout);
}
