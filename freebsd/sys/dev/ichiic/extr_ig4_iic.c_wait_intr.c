
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ u_int ;
struct TYPE_8__ {int io_lock; } ;
typedef TYPE_1__ ig4iic_softc_t ;


 int DELAY (int) ;
 int DO_POLL (TYPE_1__*) ;
 int IG4_FIFOLVL_MASK ;
 int IG4_INTR_ERR_MASK ;
 int IG4_INTR_STOP_DET ;
 int IG4_INTR_TX_EMPTY ;
 int IG4_REG_RAW_INTR_STAT ;
 int IG4_REG_TXFLR ;
 int IIC_ETIMEOUT ;
 int hz ;
 int ig4iic_set_intr_mask (TYPE_1__*,int) ;
 int intrstat2iic (TYPE_1__*,int) ;
 int msleep_spin (TYPE_1__*,int *,char*,int) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int reg_read (TYPE_1__*,int ) ;

__attribute__((used)) static int
wait_intr(ig4iic_softc_t *sc, uint32_t intr)
{
 uint32_t v;
 int error;
 int txlvl = -1;
 u_int count_us = 0;
 u_int limit_us = 25000;

 for (;;) {



  v = reg_read(sc, IG4_REG_RAW_INTR_STAT);
  error = intrstat2iic(sc, v & IG4_INTR_ERR_MASK);
  if (error || (v & intr))
   break;






  if (intr & (IG4_INTR_TX_EMPTY | IG4_INTR_STOP_DET)) {
   v = reg_read(sc, IG4_REG_TXFLR) & IG4_FIFOLVL_MASK;
   if (txlvl != v) {
    txlvl = v;
    count_us = 0;
   }
  }




  if (count_us >= limit_us) {
   error = IIC_ETIMEOUT;
   break;
  }




  if (!DO_POLL(sc)) {
   mtx_lock_spin(&sc->io_lock);
   ig4iic_set_intr_mask(sc, intr | IG4_INTR_ERR_MASK);
   msleep_spin(sc, &sc->io_lock, "i2cwait",
      (hz + 99) / 100);
   ig4iic_set_intr_mask(sc, 0);
   mtx_unlock_spin(&sc->io_lock);
   count_us += 10000;
  } else {
   DELAY(25);
   count_us += 25;
  }
 }

 return (error);
}
