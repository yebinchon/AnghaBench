
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ure_softc {int dummy; } ;


 int URE_MCU_TYPE_PLA ;
 int URE_PLA_OCP_GPHY_BASE ;
 int ure_read_2 (struct ure_softc*,int,int ) ;
 int ure_write_2 (struct ure_softc*,int ,int ,int) ;

__attribute__((used)) static uint16_t
ure_ocp_reg_read(struct ure_softc *sc, uint16_t addr)
{
 uint16_t reg;

 ure_write_2(sc, URE_PLA_OCP_GPHY_BASE, URE_MCU_TYPE_PLA, addr & 0xf000);
 reg = (addr & 0x0fff) | 0xb000;

 return (ure_read_2(sc, reg, URE_MCU_TYPE_PLA));
}
