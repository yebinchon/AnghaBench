
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otus_softc {int dummy; } ;


 int DELAY (int) ;

__attribute__((used)) static void
otus_delay_ms(struct otus_softc *sc, int ms)
{

 DELAY(1000 * ms);
}
