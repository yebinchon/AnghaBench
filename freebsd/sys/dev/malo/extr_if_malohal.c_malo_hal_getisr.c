
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct malo_hal {int mh_imask; int mh_ioh; int mh_iot; } ;


 int MALO_REG_A2H_INTERRUPT_CAUSE ;
 int MALO_REG_INT_CODE ;
 int bus_space_read_4 (int ,int ,int ) ;
 int bus_space_write_4 (int ,int ,int ,int) ;

void
malo_hal_getisr(struct malo_hal *mh, uint32_t *status)
{
 uint32_t cause;

 cause = bus_space_read_4(mh->mh_iot, mh->mh_ioh,
     MALO_REG_A2H_INTERRUPT_CAUSE);
 if (cause == 0xffffffff) {
  cause = 0;
 } else if (cause != 0) {

  bus_space_write_4(mh->mh_iot, mh->mh_ioh,
      MALO_REG_A2H_INTERRUPT_CAUSE, cause &~ mh->mh_imask);
  (void) bus_space_read_4(mh->mh_iot, mh->mh_ioh,
      MALO_REG_INT_CODE);
  cause &= mh->mh_imask;
 }

 *status = cause;
}
