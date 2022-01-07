
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int et_arg; int (* et_event_cb ) (TYPE_1__*,int ) ;scalar_t__ et_active; } ;
struct jz4780_timer_softc {TYPE_1__ et; } ;


 int CSR_WRITE_4 (struct jz4780_timer_softc*,int ,int ) ;
 int FILTER_HANDLED ;
 int JZ_TC_TECR ;
 int JZ_TC_TFCR ;
 int TESR_TCST5 ;
 int TFR_FFLAG5 ;
 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static int
jz4780_hardclock(void *arg)
{
 struct jz4780_timer_softc *sc = (struct jz4780_timer_softc *)arg;

 CSR_WRITE_4(sc, JZ_TC_TFCR, TFR_FFLAG5);
 CSR_WRITE_4(sc, JZ_TC_TECR, TESR_TCST5);

 if (sc->et.et_active)
  sc->et.et_event_cb(&sc->et, sc->et.et_arg);

 return (FILTER_HANDLED);
}
