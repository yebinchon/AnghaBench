
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int bus_addr; } ;
struct TYPE_5__ {int bus_addr; } ;
struct TYPE_7__ {int dev; scalar_t__ sram; TYPE_2__ zeropad_dma; TYPE_1__ cmd_dma; scalar_t__ cmd; } ;
typedef TYPE_3__ mxge_softc_t ;


 int DELAY (int) ;
 scalar_t__ MXGEFW_BOOT_DUMMY_RDMA ;
 int MXGE_HIGHPART_TO_U32 (int ) ;
 int MXGE_LOWPART_TO_U32 (int ) ;
 int device_printf (int ,char*,char*,int volatile*,int volatile) ;
 int htobe32 (int) ;
 int mxge_pio_copy (char volatile*,int*,int) ;
 int wmb () ;

__attribute__((used)) static void
mxge_dummy_rdma(mxge_softc_t *sc, int enable)
{
 char buf_bytes[72];
 volatile uint32_t *confirm;
 volatile char *submit;
 uint32_t *buf, dma_low, dma_high;
 int i;

 buf = (uint32_t *)((unsigned long)(buf_bytes + 7) & ~7UL);


 confirm = (volatile uint32_t *)sc->cmd;
 *confirm = 0;
 wmb();






 dma_low = MXGE_LOWPART_TO_U32(sc->cmd_dma.bus_addr);
 dma_high = MXGE_HIGHPART_TO_U32(sc->cmd_dma.bus_addr);
 buf[0] = htobe32(dma_high);
 buf[1] = htobe32(dma_low);
 buf[2] = htobe32(0xffffffff);
 dma_low = MXGE_LOWPART_TO_U32(sc->zeropad_dma.bus_addr);
 dma_high = MXGE_HIGHPART_TO_U32(sc->zeropad_dma.bus_addr);
 buf[3] = htobe32(dma_high);
 buf[4] = htobe32(dma_low);
 buf[5] = htobe32(enable);


 submit = (volatile char *)(sc->sram + MXGEFW_BOOT_DUMMY_RDMA);

 mxge_pio_copy(submit, buf, 64);
 wmb();
 DELAY(1000);
 wmb();
 i = 0;
 while (*confirm != 0xffffffff && i < 20) {
  DELAY(1000);
  i++;
 }
 if (*confirm != 0xffffffff) {
  device_printf(sc->dev, "dummy rdma %s failed (%p = 0x%x)",
         (enable ? "enable" : "disable"), confirm,
         *confirm);
 }
 return;
}
