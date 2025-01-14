
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_9__ {int hi; int address; scalar_t__ ready; } ;
struct TYPE_10__ {int dw0; TYPE_1__ bits; } ;
typedef TYPE_2__ pd_mpu_mbox_db_t ;
struct TYPE_12__ {scalar_t__ paddr; } ;
struct TYPE_11__ {TYPE_6__ bsmbx; } ;
typedef TYPE_3__* POCE_SOFTC ;


 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREWRITE ;
 int OCE_WRITE_REG32 (TYPE_3__*,int ,int ,int ) ;
 int PD_MPU_MBOX_DB ;
 int bzero (TYPE_2__*,int) ;
 int db ;
 int oce_dma_sync (TYPE_6__*,int ) ;
 int oce_mbox_wait (TYPE_3__*,int) ;

int
oce_mbox_dispatch(POCE_SOFTC sc, uint32_t tmo_sec)
{
 pd_mpu_mbox_db_t mbox_db;
 uint32_t pa;
 int rc;

 oce_dma_sync(&sc->bsmbx, BUS_DMASYNC_PREWRITE);
 pa = (uint32_t) ((uint64_t) sc->bsmbx.paddr >> 34);
 bzero(&mbox_db, sizeof(pd_mpu_mbox_db_t));
 mbox_db.bits.ready = 0;
 mbox_db.bits.hi = 1;
 mbox_db.bits.address = pa;

 rc = oce_mbox_wait(sc, tmo_sec);
 if (rc == 0) {
  OCE_WRITE_REG32(sc, db, PD_MPU_MBOX_DB, mbox_db.dw0);

  pa = (uint32_t) ((uint64_t) sc->bsmbx.paddr >> 4) & 0x3fffffff;
  mbox_db.bits.ready = 0;
  mbox_db.bits.hi = 0;
  mbox_db.bits.address = pa;

  rc = oce_mbox_wait(sc, tmo_sec);

  if (rc == 0) {
   OCE_WRITE_REG32(sc, db, PD_MPU_MBOX_DB, mbox_db.dw0);

   rc = oce_mbox_wait(sc, tmo_sec);

   oce_dma_sync(&sc->bsmbx, BUS_DMASYNC_POSTWRITE);
  }
 }

 return rc;
}
