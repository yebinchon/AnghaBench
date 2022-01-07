
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2661_softc {int dummy; } ;


 int rt2661_stop (struct rt2661_softc*) ;

void
rt2661_shutdown(void *xsc)
{
 struct rt2661_softc *sc = xsc;

 rt2661_stop(sc);
}
