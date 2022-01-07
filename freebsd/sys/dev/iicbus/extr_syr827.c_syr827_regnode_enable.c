
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct syr827_reg_sc {TYPE_1__* param; int volt_reg; int base_dev; } ;
struct regnode {int dummy; } ;
struct TYPE_2__ {int ramp_delay; } ;


 int VSEL_BUCK_EN ;
 struct syr827_reg_sc* regnode_get_softc (struct regnode*) ;
 int syr827_read (int ,int ,int *,int) ;
 int syr827_write (int ,int ,int ) ;

__attribute__((used)) static int
syr827_regnode_enable(struct regnode *regnode, bool enable, int *udelay)
{
 struct syr827_reg_sc *sc;
 uint8_t val;

 sc = regnode_get_softc(regnode);

 syr827_read(sc->base_dev, sc->volt_reg, &val, 1);
 if (enable)
  val &= ~VSEL_BUCK_EN;
 else
  val |= VSEL_BUCK_EN;
 syr827_write(sc->base_dev, sc->volt_reg, val);

 *udelay = sc->param->ramp_delay;

 return (0);
}
