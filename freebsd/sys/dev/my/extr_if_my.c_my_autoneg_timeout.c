
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct my_softc {int dummy; } ;


 int MY_FLAG_DELAYTIMEO ;
 int MY_LOCK_ASSERT (struct my_softc*) ;
 int my_autoneg_mii (struct my_softc*,int ,int) ;

__attribute__((used)) static void
my_autoneg_timeout(void *arg)
{
 struct my_softc *sc;

 sc = arg;
 MY_LOCK_ASSERT(sc);
 my_autoneg_mii(sc, MY_FLAG_DELAYTIMEO, 1);
}
