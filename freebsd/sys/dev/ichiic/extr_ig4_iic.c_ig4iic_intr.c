
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ intr_mask; int io_lock; } ;
typedef TYPE_1__ ig4iic_softc_t ;


 int FILTER_HANDLED ;
 int FILTER_STRAY ;
 int IG4_REG_INTR_STAT ;
 int ig4iic_set_intr_mask (TYPE_1__*,int ) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 scalar_t__ reg_read (TYPE_1__*,int ) ;
 int wakeup (TYPE_1__*) ;

__attribute__((used)) static int
ig4iic_intr(void *cookie)
{
 ig4iic_softc_t *sc = cookie;
 int retval = FILTER_STRAY;

 mtx_lock_spin(&sc->io_lock);

 if (sc->intr_mask != 0 && reg_read(sc, IG4_REG_INTR_STAT) != 0) {

  ig4iic_set_intr_mask(sc, 0);
  wakeup(sc);
  retval = FILTER_HANDLED;
 }
 mtx_unlock_spin(&sc->io_lock);

 return (retval);
}
