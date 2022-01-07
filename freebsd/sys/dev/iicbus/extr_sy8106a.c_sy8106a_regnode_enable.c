
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct sy8106a_reg_sc {TYPE_1__* param; int base_dev; } ;
struct regnode {int dummy; } ;
struct TYPE_2__ {int ramp_delay; } ;


 int COM_DISABLE ;
 int VOUT_COM ;
 struct sy8106a_reg_sc* regnode_get_softc (struct regnode*) ;
 int sy8106a_read (int ,int ,int *,int) ;
 int sy8106a_write (int ,int ,int ) ;

__attribute__((used)) static int
sy8106a_regnode_enable(struct regnode *regnode, bool enable, int *udelay)
{
 struct sy8106a_reg_sc *sc;
 uint8_t val;

 sc = regnode_get_softc(regnode);

 sy8106a_read(sc->base_dev, VOUT_COM, &val, 1);
 if (enable)
  val &= ~COM_DISABLE;
 else
  val |= COM_DISABLE;
 sy8106a_write(sc->base_dev, VOUT_COM, val);

 *udelay = sc->param->ramp_delay;

 return (0);
}
