
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arswitch_softc {int sc_dev; } ;


 int AR934X_AT_CTRL_AGE_EN ;
 int AR934X_AT_CTRL_LEARN_CHANGE ;
 int AR934X_QM_CTRL_ARP_COPY_EN ;
 int AR934X_QM_CTRL_ARP_EN ;
 int AR934X_REG_AT_CTRL ;
 int AR934X_REG_QM_CTRL ;
 int arswitch_modifyreg (int ,int ,int ,int ) ;
 int arswitch_writereg (int ,int ,int) ;

__attribute__((used)) static int
ar9340_atu_learn_default(struct arswitch_softc *sc)
{


 arswitch_writereg(sc->sc_dev, AR934X_REG_AT_CTRL,
     0x2b |
     AR934X_AT_CTRL_AGE_EN |
     AR934X_AT_CTRL_LEARN_CHANGE);


 arswitch_modifyreg(sc->sc_dev, AR934X_REG_QM_CTRL,
     AR934X_QM_CTRL_ARP_EN, AR934X_QM_CTRL_ARP_EN);







 return (0);
}
