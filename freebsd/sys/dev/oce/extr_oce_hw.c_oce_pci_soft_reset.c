
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cpu_reset; } ;
struct TYPE_4__ {int dw0; TYPE_1__ bits; } ;
typedef TYPE_2__ mpu_ep_control_t ;
typedef int POCE_SOFTC ;


 int DELAY (int) ;
 int MPU_EP_CONTROL ;
 int OCE_READ_CSR_MPU (int ,int ,int ) ;
 int OCE_WRITE_CSR_MPU (int ,int ,int ,int ) ;
 int csr ;
 int oce_POST (int ) ;

int
oce_pci_soft_reset(POCE_SOFTC sc)
{
 int rc;
 mpu_ep_control_t ctrl;

 ctrl.dw0 = OCE_READ_CSR_MPU(sc, csr, MPU_EP_CONTROL);
 ctrl.bits.cpu_reset = 1;
 OCE_WRITE_CSR_MPU(sc, csr, MPU_EP_CONTROL, ctrl.dw0);
 DELAY(50);
 rc=oce_POST(sc);

 return rc;
}
