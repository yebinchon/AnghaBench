
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mmc_data {int flags; int xfer_len; int len; scalar_t__ data; } ;
struct mmc_command {struct mmc_data* data; } ;
struct dwmmc_softc {int dummy; } ;


 int KASSERT (int,char*) ;
 int MMC_DATA_WRITE ;
 int READ4 (struct dwmmc_softc*,int ) ;
 int SDMMC_DATA ;
 int SDMMC_INTMASK_TXDR ;
 int SDMMC_RINTSTS ;
 int SDMMC_STATUS ;
 int SDMMC_STATUS_FIFO_FULL ;
 int WRITE4 (struct dwmmc_softc*,int ,int ) ;

__attribute__((used)) static void
pio_write(struct dwmmc_softc *sc, struct mmc_command *cmd)
{
 struct mmc_data *data;
 uint32_t *p, status;

 if (cmd == ((void*)0) || cmd->data == ((void*)0))
  return;

 data = cmd->data;
 if ((data->flags & MMC_DATA_WRITE) == 0)
  return;

 KASSERT((data->xfer_len & 3) == 0, ("xfer_len not aligned"));
 p = (uint32_t *)data->data + (data->xfer_len >> 2);

 while (data->xfer_len < data->len) {
  status = READ4(sc, SDMMC_STATUS);
  if (status & SDMMC_STATUS_FIFO_FULL)
   break;
  WRITE4(sc, SDMMC_DATA, *p++);
  data->xfer_len += 4;
 }

 WRITE4(sc, SDMMC_RINTSTS, SDMMC_INTMASK_TXDR);
}
