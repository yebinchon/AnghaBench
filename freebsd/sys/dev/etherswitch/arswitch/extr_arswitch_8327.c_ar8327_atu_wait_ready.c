
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arswitch_softc {int sc_dev; } ;


 int AR8327_ATU_FUNC_BUSY ;
 int AR8327_REG_ATU_FUNC ;
 int arswitch_waitreg (int ,int ,int ,int ,int) ;

__attribute__((used)) static int
ar8327_atu_wait_ready(struct arswitch_softc *sc)
{
 int ret;

 ret = arswitch_waitreg(sc->sc_dev,
     AR8327_REG_ATU_FUNC,
     AR8327_ATU_FUNC_BUSY,
     0,
     1000);

 return (ret);
}
