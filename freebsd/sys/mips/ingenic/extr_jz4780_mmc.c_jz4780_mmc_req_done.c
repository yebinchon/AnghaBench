
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_request {int (* done ) (struct mmc_request*) ;struct mmc_command* cmd; } ;
struct mmc_command {scalar_t__ error; TYPE_1__* data; } ;
struct jz4780_mmc_softc {int sc_dma_inuse; scalar_t__ sc_intr_seen; scalar_t__ sc_intr_wait; scalar_t__ sc_dma_map_err; scalar_t__ sc_resid; struct mmc_request* sc_req; int sc_timeoutc; int sc_dma_buf_map; int sc_dma_buf_tag; int sc_dma_map; int sc_dma_tag; } ;
typedef int bus_dmasync_op_t ;
struct TYPE_2__ {int flags; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int MMC_DATA_WRITE ;
 scalar_t__ MMC_ERR_NONE ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int callout_stop (int *) ;
 int jz4780_mmc_reset (struct jz4780_mmc_softc*) ;
 int stub1 (struct mmc_request*) ;

__attribute__((used)) static void
jz4780_mmc_req_done(struct jz4780_mmc_softc *sc)
{
 struct mmc_command *cmd;
 struct mmc_request *req;
 bus_dmasync_op_t sync_op;

 cmd = sc->sc_req->cmd;

 if (cmd->error != MMC_ERR_NONE)
  jz4780_mmc_reset(sc);

 if (sc->sc_dma_inuse == 1) {
  if (cmd->data->flags & MMC_DATA_WRITE)
   sync_op = BUS_DMASYNC_POSTWRITE;
  else
   sync_op = BUS_DMASYNC_POSTREAD;
  bus_dmamap_sync(sc->sc_dma_buf_tag, sc->sc_dma_buf_map,
      sync_op);
  bus_dmamap_sync(sc->sc_dma_tag, sc->sc_dma_map,
      BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(sc->sc_dma_buf_tag, sc->sc_dma_buf_map);
 }
 req = sc->sc_req;
 callout_stop(&sc->sc_timeoutc);
 sc->sc_req = ((void*)0);
 sc->sc_resid = 0;
 sc->sc_dma_inuse = 0;
 sc->sc_dma_map_err = 0;
 sc->sc_intr_wait = 0;
 sc->sc_intr_seen = 0;
 req->done(req);
}
