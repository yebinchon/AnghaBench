
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ichwd_softc {int device; scalar_t__ active; } ;


 int TCO1_CNT ;
 int TCO_CNT_PRESERVE ;
 int TCO_TMR_HALT ;
 int ichwd_read_tco_2 (struct ichwd_softc*,int ) ;
 int ichwd_verbose_printf (int ,char*) ;
 int ichwd_write_tco_2 (struct ichwd_softc*,int ,int) ;

__attribute__((used)) static __inline void
ichwd_tmr_disable(struct ichwd_softc *sc)
{
 uint16_t cnt;

 cnt = ichwd_read_tco_2(sc, TCO1_CNT) & TCO_CNT_PRESERVE;
 ichwd_write_tco_2(sc, TCO1_CNT, cnt | TCO_TMR_HALT);
 sc->active = 0;
 ichwd_verbose_printf(sc->device, "timer disabled\n");
}
