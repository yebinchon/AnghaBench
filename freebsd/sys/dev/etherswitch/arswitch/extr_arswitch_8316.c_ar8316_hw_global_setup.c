
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arswitch_softc {int sc_dev; } ;


 int AR8316_GLOBAL_CTRL_MTU_MASK ;
 int AR8X16_CPU_MIRROR_DIS ;
 int AR8X16_CPU_PORT_EN ;
 int AR8X16_FLOOD_MASK_BCAST_TO_CPU ;
 int AR8X16_MAGIC ;
 int AR8X16_REG_CPU_PORT ;
 int AR8X16_REG_FLOOD_MASK ;
 int AR8X16_REG_GLOBAL_CTRL ;
 int AR8X16_REG_SERVICE_TAG ;
 int AR8X16_REG_TAG_PRIO ;
 int AR8X16_SERVICE_TAG_MASK ;
 int ARSWITCH_LOCK (struct arswitch_softc*) ;
 int ARSWITCH_UNLOCK (struct arswitch_softc*) ;
 int arswitch_modifyreg (int ,int ,int ,int) ;
 int arswitch_writereg (int ,int,int) ;

__attribute__((used)) static int
ar8316_hw_global_setup(struct arswitch_softc *sc)
{

 ARSWITCH_LOCK(sc);

 arswitch_writereg(sc->sc_dev, 0x38, AR8X16_MAGIC);


 arswitch_writereg(sc->sc_dev, AR8X16_REG_CPU_PORT,
     AR8X16_CPU_PORT_EN | AR8X16_CPU_MIRROR_DIS);


 arswitch_writereg(sc->sc_dev, AR8X16_REG_TAG_PRIO, 0xfa50);





 arswitch_writereg(sc->sc_dev, AR8X16_REG_FLOOD_MASK,
     AR8X16_FLOOD_MASK_BCAST_TO_CPU | 0x003f003f);


 arswitch_modifyreg(sc->sc_dev, AR8X16_REG_GLOBAL_CTRL,
     AR8316_GLOBAL_CTRL_MTU_MASK, 9018 + 8 + 2);


 arswitch_modifyreg(sc->sc_dev, AR8X16_REG_SERVICE_TAG,
     AR8X16_SERVICE_TAG_MASK, 0);

 ARSWITCH_UNLOCK(sc);
 return (0);
}
