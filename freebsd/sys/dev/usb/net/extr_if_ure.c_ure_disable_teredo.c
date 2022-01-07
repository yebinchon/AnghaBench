
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ure_softc {int dummy; } ;


 int URE_MCU_TYPE_PLA ;
 int URE_OOB_TEREDO_EN ;
 int URE_PLA_REALWOW_TIMER ;
 int URE_PLA_TEREDO_CFG ;
 int URE_PLA_TEREDO_TIMER ;
 int URE_PLA_WDT6_CTRL ;
 int URE_TEREDO_RS_EVENT_MASK ;
 int URE_TEREDO_SEL ;
 int URE_WDT6_SET_MODE ;
 int ure_read_4 (struct ure_softc*,int ,int ) ;
 int ure_write_2 (struct ure_softc*,int ,int ,int ) ;
 int ure_write_4 (struct ure_softc*,int ,int ,int) ;

__attribute__((used)) static void
ure_disable_teredo(struct ure_softc *sc)
{

 ure_write_4(sc, URE_PLA_TEREDO_CFG, URE_MCU_TYPE_PLA,
     ure_read_4(sc, URE_PLA_TEREDO_CFG, URE_MCU_TYPE_PLA) &
     ~(URE_TEREDO_SEL | URE_TEREDO_RS_EVENT_MASK | URE_OOB_TEREDO_EN));
 ure_write_2(sc, URE_PLA_WDT6_CTRL, URE_MCU_TYPE_PLA,
     URE_WDT6_SET_MODE);
 ure_write_2(sc, URE_PLA_REALWOW_TIMER, URE_MCU_TYPE_PLA, 0);
 ure_write_4(sc, URE_PLA_TEREDO_TIMER, URE_MCU_TYPE_PLA, 0);
}
