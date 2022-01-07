
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsu_softc {int dummy; } ;


 int DELAY (int) ;

__attribute__((used)) static void
rsu_ms_delay(struct rsu_softc *sc, int ms)
{


 DELAY(ms * 1000);
}
