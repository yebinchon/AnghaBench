
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {scalar_t__ ready; } ;
struct TYPE_7__ {TYPE_1__ bits; int dw0; } ;
typedef TYPE_2__ pd_mpu_mbox_db_t ;
struct TYPE_8__ {int dev; } ;
typedef TYPE_3__* POCE_SOFTC ;


 int DELAY (int) ;
 int ETIMEDOUT ;
 int OCE_READ_REG32 (TYPE_3__*,int ,int ) ;
 int PD_MPU_MBOX_DB ;
 int db ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
oce_mbox_wait(POCE_SOFTC sc, uint32_t tmo_sec)
{
 tmo_sec *= 10000;
 pd_mpu_mbox_db_t mbox_db;

 for (;;) {
  if (tmo_sec != 0) {
   if (--tmo_sec == 0)
    break;
  }

  mbox_db.dw0 = OCE_READ_REG32(sc, db, PD_MPU_MBOX_DB);

  if (mbox_db.bits.ready)
   return 0;

  DELAY(100);
 }

 device_printf(sc->dev, "Mailbox timed out\n");

 return ETIMEDOUT;
}
