
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arswitch_softc {int sc_dev; } ;


 int AR8327_PORT_HOL_CTRL1_EG_MIRROR_EN ;
 int AR8327_PORT_LOOKUP_ING_MIRROR_EN ;
 int AR8327_REG_PORT_HOL_CTRL1 (int) ;
 int AR8327_REG_PORT_LOOKUP (int) ;
 int arswitch_modifyreg (int ,int ,int ,int ) ;

__attribute__((used)) static void
ar8327_port_disable_mirror(struct arswitch_softc *sc, int port)
{

 arswitch_modifyreg(sc->sc_dev,
     AR8327_REG_PORT_LOOKUP(port),
     AR8327_PORT_LOOKUP_ING_MIRROR_EN,
     0);
 arswitch_modifyreg(sc->sc_dev,
     AR8327_REG_PORT_HOL_CTRL1(port),
     AR8327_PORT_HOL_CTRL1_EG_MIRROR_EN,
     0);
}
