
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrsas_softc {int io_lock; int data_tag; } ;
struct mrsas_mpt_cmd {int flags; int data_dmamap; int * data; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int MRSAS_DIR_IN ;
 int MRSAS_DIR_OUT ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
mrsas_unmap_request(struct mrsas_softc *sc, struct mrsas_mpt_cmd *cmd)
{
 if (cmd->data != ((void*)0)) {
  if (cmd->flags & MRSAS_DIR_IN)
   bus_dmamap_sync(sc->data_tag, cmd->data_dmamap, BUS_DMASYNC_POSTREAD);
  if (cmd->flags & MRSAS_DIR_OUT)
   bus_dmamap_sync(sc->data_tag, cmd->data_dmamap, BUS_DMASYNC_POSTWRITE);
  mtx_lock(&sc->io_lock);
  bus_dmamap_unload(sc->data_tag, cmd->data_dmamap);
  mtx_unlock(&sc->io_lock);
 }
}
