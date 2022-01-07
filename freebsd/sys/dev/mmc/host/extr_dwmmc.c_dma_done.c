
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_data {int flags; } ;
struct mmc_command {struct mmc_data* data; } ;
struct dwmmc_softc {int buf_map; int buf_tag; int desc_map; int desc_tag; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int MMC_DATA_WRITE ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;

__attribute__((used)) static int
dma_done(struct dwmmc_softc *sc, struct mmc_command *cmd)
{
 struct mmc_data *data;

 data = cmd->data;

 if (data->flags & MMC_DATA_WRITE)
  bus_dmamap_sync(sc->buf_tag, sc->buf_map,
   BUS_DMASYNC_POSTWRITE);
 else
  bus_dmamap_sync(sc->buf_tag, sc->buf_map,
   BUS_DMASYNC_POSTREAD);

 bus_dmamap_sync(sc->desc_tag, sc->desc_map,
     BUS_DMASYNC_POSTWRITE);

 bus_dmamap_unload(sc->buf_tag, sc->buf_map);

 return (0);
}
