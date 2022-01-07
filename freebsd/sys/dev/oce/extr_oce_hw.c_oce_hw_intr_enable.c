
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int POCE_SOFTC ;


 int HOSTINTR_MASK ;
 int OCE_READ_REG32 (int ,int ,int ) ;
 int OCE_WRITE_REG32 (int ,int ,int ,int ) ;
 int PCICFG_INTR_CTRL ;
 int devcfg ;

void
oce_hw_intr_enable(POCE_SOFTC sc)
{
 uint32_t reg;

 reg = OCE_READ_REG32(sc, devcfg, PCICFG_INTR_CTRL);
 reg |= HOSTINTR_MASK;
 OCE_WRITE_REG32(sc, devcfg, PCICFG_INTR_CTRL, reg);

}
