
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_11__ {int map; int dmat; int bus_addr; } ;
struct TYPE_12__ {char* sram; int cmd_mtx; int dev; TYPE_2__ cmd_dma; TYPE_6__* cmd; } ;
typedef TYPE_3__ mxge_softc_t ;
struct TYPE_13__ {int data0; int data1; int data2; } ;
typedef TYPE_4__ mxge_cmd_t ;
struct TYPE_10__ {void* high; void* low; } ;
struct TYPE_14__ {TYPE_1__ response_addr; void* cmd; void* data2; void* data1; void* data0; } ;
typedef TYPE_5__ mcp_cmd_t ;
struct TYPE_15__ {int result; int data; } ;
typedef TYPE_6__ mcp_cmd_response_t ;


 int BUS_DMASYNC_POSTREAD ;
 int DELAY (int) ;
 int E2BIG ;
 int EAGAIN ;
 int EBUSY ;
 int ENOSYS ;
 int ENXIO ;




 int MXGEFW_ETH_CMD ;
 int MXGE_HIGHPART_TO_U32 (int ) ;
 int MXGE_LOWPART_TO_U32 (int ) ;
 int be32toh (int) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int device_printf (int ,char*,int,int) ;
 void* htobe32 (int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int mxge_pio_copy (void volatile*,TYPE_5__*,int) ;
 int wmb () ;

__attribute__((used)) static int
mxge_send_cmd(mxge_softc_t *sc, uint32_t cmd, mxge_cmd_t *data)
{
 mcp_cmd_t *buf;
 char buf_bytes[sizeof(*buf) + 8];
 volatile mcp_cmd_response_t *response = sc->cmd;
 volatile char *cmd_addr = sc->sram + MXGEFW_ETH_CMD;
 uint32_t dma_low, dma_high;
 int err, sleep_total = 0;


 buf = (mcp_cmd_t *)((unsigned long)(buf_bytes + 7) & ~7UL);

 buf->data0 = htobe32(data->data0);
 buf->data1 = htobe32(data->data1);
 buf->data2 = htobe32(data->data2);
 buf->cmd = htobe32(cmd);
 dma_low = MXGE_LOWPART_TO_U32(sc->cmd_dma.bus_addr);
 dma_high = MXGE_HIGHPART_TO_U32(sc->cmd_dma.bus_addr);

 buf->response_addr.low = htobe32(dma_low);
 buf->response_addr.high = htobe32(dma_high);
 mtx_lock(&sc->cmd_mtx);
 response->result = 0xffffffff;
 wmb();
 mxge_pio_copy((volatile void *)cmd_addr, buf, sizeof (*buf));


 err = EAGAIN;
 for (sleep_total = 0; sleep_total < 20; sleep_total++) {
  bus_dmamap_sync(sc->cmd_dma.dmat,
    sc->cmd_dma.map, BUS_DMASYNC_POSTREAD);
  wmb();
  switch (be32toh(response->result)) {
  case 0:
   data->data0 = be32toh(response->data);
   err = 0;
   break;
  case 0xffffffff:
   DELAY(1000);
   break;
  case 128:
   err = ENOSYS;
   break;
  case 129:
   err = E2BIG;
   break;
  case 131:
   err = EBUSY;
   break;
  case 130:
   err = ENXIO;
   break;
  default:
   device_printf(sc->dev,
          "mxge: command %d "
          "failed, result = %d\n",
          cmd, be32toh(response->result));
   err = ENXIO;
   break;
  }
  if (err != EAGAIN)
   break;
 }
 if (err == EAGAIN)
  device_printf(sc->dev, "mxge: command %d timed out"
         "result = %d\n",
         cmd, be32toh(response->result));
 mtx_unlock(&sc->cmd_mtx);
 return err;
}
