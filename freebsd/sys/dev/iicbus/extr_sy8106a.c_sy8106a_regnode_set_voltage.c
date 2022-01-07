
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct sy8106a_reg_sc {TYPE_1__* param; int base_dev; } ;
struct regnode {int dummy; } ;
struct TYPE_2__ {int ramp_delay; } ;


 int SEL_GO ;
 int SEL_VOLTAGE_BASE ;
 int SEL_VOLTAGE_MASK ;
 int SEL_VOLTAGE_STEP ;
 int VOUT1_SEL ;
 int abs (int) ;
 struct sy8106a_reg_sc* regnode_get_softc (struct regnode*) ;
 int sy8106a_read (int ,int ,int*,int) ;
 int sy8106a_write (int ,int ,int) ;

__attribute__((used)) static int
sy8106a_regnode_set_voltage(struct regnode *regnode, int min_uvolt,
    int max_uvolt, int *udelay)
{
 struct sy8106a_reg_sc *sc;
 int cur_uvolt;
 uint8_t val, oval;

 sc = regnode_get_softc(regnode);


 sy8106a_read(sc->base_dev, VOUT1_SEL, &oval, 1);
 cur_uvolt = (oval & SEL_VOLTAGE_MASK) * SEL_VOLTAGE_STEP +
     SEL_VOLTAGE_BASE;


 val = SEL_GO | ((min_uvolt - SEL_VOLTAGE_BASE) / SEL_VOLTAGE_STEP);
 sy8106a_write(sc->base_dev, VOUT1_SEL, val);


 *udelay = sc->param->ramp_delay *
     (abs(cur_uvolt - min_uvolt) / SEL_VOLTAGE_STEP);

 return (0);
}
