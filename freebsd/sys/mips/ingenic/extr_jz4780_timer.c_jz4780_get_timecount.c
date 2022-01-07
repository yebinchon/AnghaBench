
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timecounter {scalar_t__ tc_priv; } ;
struct jz4780_timer_softc {int dummy; } ;


 int CSR_READ_4 (struct jz4780_timer_softc*,int ) ;
 int JZ_OST_CNT_LO ;

__attribute__((used)) static unsigned
jz4780_get_timecount(struct timecounter *tc)
{
 struct jz4780_timer_softc *sc =
     (struct jz4780_timer_softc *)tc->tc_priv;

 return CSR_READ_4(sc, JZ_OST_CNT_LO);
}
