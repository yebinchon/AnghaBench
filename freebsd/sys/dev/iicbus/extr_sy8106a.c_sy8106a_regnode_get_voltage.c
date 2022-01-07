
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct sy8106a_reg_sc {int base_dev; } ;
struct regnode {int dummy; } ;


 int SEL_VOLTAGE_BASE ;
 int SEL_VOLTAGE_MASK ;
 int SEL_VOLTAGE_STEP ;
 int VOUT1_SEL ;
 struct sy8106a_reg_sc* regnode_get_softc (struct regnode*) ;
 int sy8106a_read (int ,int ,int*,int) ;

__attribute__((used)) static int
sy8106a_regnode_get_voltage(struct regnode *regnode, int *uvolt)
{
 struct sy8106a_reg_sc *sc;
 uint8_t val;

 sc = regnode_get_softc(regnode);

 sy8106a_read(sc->base_dev, VOUT1_SEL, &val, 1);
 *uvolt = (val & SEL_VOLTAGE_MASK) * SEL_VOLTAGE_STEP +
     SEL_VOLTAGE_BASE;

 return (0);
}
