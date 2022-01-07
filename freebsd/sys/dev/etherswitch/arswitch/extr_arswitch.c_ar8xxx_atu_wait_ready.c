
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arswitch_softc {int sc_dev; } ;


 int AR8216_ATU_ACTIVE ;
 int AR8216_REG_ATU ;
 int ARSWITCH_LOCK_ASSERT (struct arswitch_softc*,int ) ;
 int MA_OWNED ;
 int arswitch_waitreg (int ,int ,int ,int ,int) ;

__attribute__((used)) static int
ar8xxx_atu_wait_ready(struct arswitch_softc *sc)
{
 int ret;

 ARSWITCH_LOCK_ASSERT(sc, MA_OWNED);

 ret = arswitch_waitreg(sc->sc_dev,
     AR8216_REG_ATU,
     AR8216_ATU_ACTIVE,
     0,
     1000);

 return (ret);
}
