
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int e6000sw_softc_t ;
typedef int device_t ;


 int ATU_CONTROL ;
 int ATU_CONTROL_AGETIME ;
 int ATU_CONTROL_AGETIME_MASK ;
 int COUNT_ALL ;
 int E6000SW_DEFAULT_AGETIME ;
 int MGMT_EN_0x ;
 int MGMT_EN_2x ;
 int MGMT_EN_ALL ;
 int NO_OPERATION ;
 int REG_GLOBAL ;
 int REG_GLOBAL2 ;
 int SWITCH_GLOBAL_CONTROL2 ;
 int SWITCH_MGMT ;
 int SWITCH_MGMT_FC_PRI_MASK ;
 int SWITCH_MGMT_FORCEFLOW ;
 int SWITCH_MGMT_PRI_MASK ;
 int SWITCH_MGMT_RSVD2CPU ;
 int e6000sw_atu_flush (int ,int *,int ) ;
 int e6000sw_atu_mac_table (int ,int *,int *,int ) ;
 int e6000sw_readreg (int *,int ,int ) ;
 int e6000sw_set_atustat (int ,int *,int ,int ) ;
 int e6000sw_writereg (int *,int ,int ,int) ;

__attribute__((used)) static void
e6000sw_setup(device_t dev, e6000sw_softc_t *sc)
{
 uint32_t atu_ctrl;


 atu_ctrl = e6000sw_readreg(sc, REG_GLOBAL, ATU_CONTROL);
 atu_ctrl &= ~ATU_CONTROL_AGETIME_MASK;
 atu_ctrl |= E6000SW_DEFAULT_AGETIME << ATU_CONTROL_AGETIME;
 e6000sw_writereg(sc, REG_GLOBAL, ATU_CONTROL, atu_ctrl);


 e6000sw_writereg(sc, REG_GLOBAL2, MGMT_EN_2x, MGMT_EN_ALL);
 e6000sw_writereg(sc, REG_GLOBAL2, MGMT_EN_0x, MGMT_EN_ALL);


 e6000sw_writereg(sc, REG_GLOBAL, SWITCH_GLOBAL_CONTROL2, 0);


 e6000sw_writereg(sc, REG_GLOBAL2, SWITCH_MGMT,
     SWITCH_MGMT_PRI_MASK |
     (1 << SWITCH_MGMT_RSVD2CPU) |
     SWITCH_MGMT_FC_PRI_MASK |
     (1 << SWITCH_MGMT_FORCEFLOW));

 e6000sw_atu_flush(dev, sc, NO_OPERATION);
 e6000sw_atu_mac_table(dev, sc, ((void*)0), NO_OPERATION);
 e6000sw_set_atustat(dev, sc, 0, COUNT_ALL);
}
