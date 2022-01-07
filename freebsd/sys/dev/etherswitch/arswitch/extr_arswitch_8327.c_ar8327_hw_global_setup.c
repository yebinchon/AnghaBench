
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int es_nports; } ;
struct arswitch_softc {TYPE_1__ info; int sc_dev; } ;


 int AR8327_EEE_CTRL_DISABLE_PHY (int) ;
 int AR8327_FWD_CTRL0_CPU_PORT_EN ;
 int AR8327_FWD_CTRL0_MIRROR_PORT ;
 int AR8327_FWD_CTRL1_BC_FLOOD_S ;
 int AR8327_FWD_CTRL1_MC_FLOOD_S ;
 int AR8327_FWD_CTRL1_UC_FLOOD_S ;
 int AR8327_MAX_FRAME_SIZE_MTU ;
 int AR8327_MODULE_EN_MIB ;
 int AR8327_PORTS_ALL ;
 int AR8327_REG_EEE_CTRL ;
 int AR8327_REG_FWD_CTRL0 ;
 int AR8327_REG_FWD_CTRL1 ;
 int AR8327_REG_MAX_FRAME_SIZE ;
 int AR8327_REG_MODULE_EN ;
 int ARSWITCH_LOCK (struct arswitch_softc*) ;
 int ARSWITCH_UNLOCK (struct arswitch_softc*) ;
 int arswitch_modifyreg (int ,int ,int,int) ;
 int arswitch_readreg (int ,int ) ;
 int arswitch_writereg (int ,int ,int) ;

__attribute__((used)) static int
ar8327_hw_global_setup(struct arswitch_softc *sc)
{
 uint32_t t;

 ARSWITCH_LOCK(sc);


 t = AR8327_FWD_CTRL0_CPU_PORT_EN |
     AR8327_FWD_CTRL0_MIRROR_PORT;
 arswitch_writereg(sc->sc_dev, AR8327_REG_FWD_CTRL0, t);


 t = (AR8327_PORTS_ALL << AR8327_FWD_CTRL1_UC_FLOOD_S) |
     (AR8327_PORTS_ALL << AR8327_FWD_CTRL1_MC_FLOOD_S) |
     (AR8327_PORTS_ALL << AR8327_FWD_CTRL1_BC_FLOOD_S);
 arswitch_writereg(sc->sc_dev, AR8327_REG_FWD_CTRL1, t);



 arswitch_modifyreg(sc->sc_dev, AR8327_REG_MAX_FRAME_SIZE,
     AR8327_MAX_FRAME_SIZE_MTU, 9018 + 8 + 2);


 arswitch_modifyreg(sc->sc_dev, AR8327_REG_MODULE_EN,
     AR8327_MODULE_EN_MIB, AR8327_MODULE_EN_MIB);


 t = arswitch_readreg(sc->sc_dev, AR8327_REG_EEE_CTRL);
 t |= AR8327_EEE_CTRL_DISABLE_PHY(0) |
     AR8327_EEE_CTRL_DISABLE_PHY(1) |
     AR8327_EEE_CTRL_DISABLE_PHY(2) |
     AR8327_EEE_CTRL_DISABLE_PHY(3) |
     AR8327_EEE_CTRL_DISABLE_PHY(4);
 arswitch_writereg(sc->sc_dev, AR8327_REG_EEE_CTRL, t);



 sc->info.es_nports = 7;

 ARSWITCH_UNLOCK(sc);
 return (0);
}
