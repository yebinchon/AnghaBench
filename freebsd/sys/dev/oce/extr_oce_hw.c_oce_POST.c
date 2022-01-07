
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ stage; scalar_t__ error; } ;
struct TYPE_9__ {void* dw0; TYPE_1__ bits; } ;
typedef TYPE_2__ mpu_ep_semaphore_t ;
struct TYPE_10__ {int dev; } ;
typedef TYPE_3__* POCE_SOFTC ;


 int DELAY (int) ;
 int ENXIO ;
 int MPU_EP_SEMAPHORE (TYPE_3__*) ;
 void* OCE_READ_CSR_MPU (TYPE_3__*,int ,int ) ;
 int OCE_WRITE_CSR_MPU (TYPE_3__*,int ,int ,void*) ;
 scalar_t__ POST_STAGE_ARMFW_READY ;
 scalar_t__ POST_STAGE_AWAITING_HOST_RDY ;
 scalar_t__ POST_STAGE_CHIP_RESET ;
 int csr ;
 int device_printf (int ,char*,void*) ;

__attribute__((used)) static int
oce_POST(POCE_SOFTC sc)
{
 mpu_ep_semaphore_t post_status;
 int tmo = 60000;


 post_status.dw0 = OCE_READ_CSR_MPU(sc, csr, MPU_EP_SEMAPHORE(sc));


 if (post_status.bits.stage <= POST_STAGE_AWAITING_HOST_RDY) {
  post_status.bits.stage = POST_STAGE_CHIP_RESET;
  OCE_WRITE_CSR_MPU(sc, csr, MPU_EP_SEMAPHORE(sc), post_status.dw0);
 }


 for (;;) {
  if (--tmo == 0)
   break;

  DELAY(1000);

  post_status.dw0 = OCE_READ_CSR_MPU(sc, csr, MPU_EP_SEMAPHORE(sc));
  if (post_status.bits.error) {
   device_printf(sc->dev,
      "POST failed: %x\n", post_status.dw0);
   return ENXIO;
  }
  if (post_status.bits.stage == POST_STAGE_ARMFW_READY)
   return 0;
 }

 device_printf(sc->dev, "POST timed out: %x\n", post_status.dw0);

 return ENXIO;
}
