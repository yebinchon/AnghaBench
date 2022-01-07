
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2860_softc {int dummy; } ;


 int rt2860_stop (struct rt2860_softc*) ;

void
rt2860_shutdown(void *xsc)
{
 struct rt2860_softc *sc = xsc;

 rt2860_stop(sc);
}
