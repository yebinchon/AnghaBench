
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_7__ {int slave_valid; scalar_t__ last_slave; int use_10bit; } ;
typedef TYPE_1__ ig4iic_softc_t ;


 scalar_t__ IG4_CTL_10BIT ;
 scalar_t__ IG4_CTL_RESTARTEN ;
 int IG4_I2C_ENABLE ;
 int IG4_INTR_TX_EMPTY ;
 int IG4_REG_CTL ;
 int IG4_REG_TAR_ADD ;
 scalar_t__ IG4_TAR_10BIT ;
 scalar_t__ reg_read (TYPE_1__*,int ) ;
 int reg_write (TYPE_1__*,int ,scalar_t__) ;
 int set_controller (TYPE_1__*,int ) ;
 int wait_intr (TYPE_1__*,int ) ;

__attribute__((used)) static void
set_slave_addr(ig4iic_softc_t *sc, uint8_t slave)
{
 uint32_t tar;
 uint32_t ctl;
 int use_10bit;

 use_10bit = 0;
 if (sc->slave_valid && sc->last_slave == slave &&
     sc->use_10bit == use_10bit) {
  return;
 }
 sc->use_10bit = use_10bit;




 wait_intr(sc, IG4_INTR_TX_EMPTY);

 set_controller(sc, 0);
 ctl = reg_read(sc, IG4_REG_CTL);
 ctl &= ~IG4_CTL_10BIT;
 ctl |= IG4_CTL_RESTARTEN;

 tar = slave;
 if (sc->use_10bit) {
  tar |= IG4_TAR_10BIT;
  ctl |= IG4_CTL_10BIT;
 }
 reg_write(sc, IG4_REG_CTL, ctl);
 reg_write(sc, IG4_REG_TAR_ADD, tar);
 set_controller(sc, IG4_I2C_ENABLE);
 sc->slave_valid = 1;
 sc->last_slave = slave;
}
