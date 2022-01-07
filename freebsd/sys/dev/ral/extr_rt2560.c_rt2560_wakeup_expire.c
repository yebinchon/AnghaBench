
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2560_softc {int dummy; } ;


 int DPRINTFN (struct rt2560_softc*,int,char*,char*) ;

__attribute__((used)) static void
rt2560_wakeup_expire(struct rt2560_softc *sc)
{
 DPRINTFN(sc, 2, "%s", "wakeup expired\n");
}
