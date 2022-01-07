
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct syr827_reg_sc {TYPE_1__* param; int volt_reg; int base_dev; } ;
struct regnode {int dummy; } ;
struct TYPE_2__ {int ramp_delay; } ;


 int VSEL_NSEL_MASK ;
 int VSEL_VOLTAGE_BASE ;
 int VSEL_VOLTAGE_STEP ;
 int abs (int) ;
 struct syr827_reg_sc* regnode_get_softc (struct regnode*) ;
 int syr827_read (int ,int ,int*,int) ;
 int syr827_write (int ,int ,int) ;

__attribute__((used)) static int
syr827_regnode_set_voltage(struct regnode *regnode, int min_uvolt,
    int max_uvolt, int *udelay)
{
 struct syr827_reg_sc *sc;
 int cur_uvolt;
 uint8_t val;

 sc = regnode_get_softc(regnode);


 syr827_read(sc->base_dev, sc->volt_reg, &val, 1);
 cur_uvolt = (val & VSEL_NSEL_MASK) * VSEL_VOLTAGE_STEP +
     VSEL_VOLTAGE_BASE;


 val &= ~VSEL_NSEL_MASK;
 val |= ((min_uvolt - VSEL_VOLTAGE_BASE) / VSEL_VOLTAGE_STEP);
 syr827_write(sc->base_dev, sc->volt_reg, val);


 *udelay = sc->param->ramp_delay *
     (abs(cur_uvolt - min_uvolt) / VSEL_VOLTAGE_STEP);

 return (0);
}
