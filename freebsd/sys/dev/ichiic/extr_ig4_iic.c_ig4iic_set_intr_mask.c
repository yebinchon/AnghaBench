
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ intr_mask; } ;
typedef TYPE_1__ ig4iic_softc_t ;


 int IG4_REG_INTR_MASK ;
 int reg_write (TYPE_1__*,int ,scalar_t__) ;

__attribute__((used)) static void
ig4iic_set_intr_mask(ig4iic_softc_t *sc, uint32_t val)
{
 if (sc->intr_mask != val) {
  reg_write(sc, IG4_REG_INTR_MASK, val);
  sc->intr_mask = val;
 }
}
