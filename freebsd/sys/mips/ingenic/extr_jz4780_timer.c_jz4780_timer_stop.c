
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jz4780_timer_softc {int dummy; } ;
struct eventtimer {scalar_t__ et_priv; } ;


 int CSR_WRITE_4 (struct jz4780_timer_softc*,int ,int ) ;
 int JZ_TC_TECR ;
 int TESR_TCST5 ;

__attribute__((used)) static int
jz4780_timer_stop(struct eventtimer *et)
{
 struct jz4780_timer_softc *sc =
     (struct jz4780_timer_softc *)et->et_priv;

 CSR_WRITE_4(sc, JZ_TC_TECR, TESR_TCST5);
 return (0);
}
