
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sgt_t ;
struct TYPE_6__ {int cm_flags; scalar_t__ bcount; scalar_t__ data_dir; int nseg; int tag; scalar_t__ sgt; TYPE_3__* softs; int cm_datamap; } ;
typedef TYPE_2__ rcb_t ;
struct TYPE_5__ {int pqi_buffer_dmat; } ;
struct TYPE_7__ {int taglist; TYPE_1__ os_specific; } ;
typedef TYPE_3__ pqisrc_softstate_t ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int DBG_IO (char*,...) ;
 int PQI_CMD_MAPPED ;
 scalar_t__ SOP_DATA_DIR_FROM_DEVICE ;
 scalar_t__ SOP_DATA_DIR_TO_DEVICE ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int os_mem_free (TYPE_3__*,void*,int) ;
 int pqisrc_put_tag (int *,int ) ;

__attribute__((used)) static void pqi_unmap_request(void *arg)
{
 pqisrc_softstate_t *softs;
 rcb_t *rcb;

 DBG_IO("IN rcb = %p\n", arg);

 rcb = (rcb_t *)arg;
 softs = rcb->softs;

 if (!(rcb->cm_flags & PQI_CMD_MAPPED))
  return;

 if (rcb->bcount != 0 ) {
  if (rcb->data_dir == SOP_DATA_DIR_FROM_DEVICE)
   bus_dmamap_sync(softs->os_specific.pqi_buffer_dmat,
     rcb->cm_datamap,
     BUS_DMASYNC_POSTREAD);
  if (rcb->data_dir == SOP_DATA_DIR_TO_DEVICE)
   bus_dmamap_sync(softs->os_specific.pqi_buffer_dmat,
     rcb->cm_datamap,
     BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(softs->os_specific.pqi_buffer_dmat,
     rcb->cm_datamap);
 }
 rcb->cm_flags &= ~PQI_CMD_MAPPED;

 if(rcb->sgt && rcb->nseg)
  os_mem_free(rcb->softs, (void*)rcb->sgt,
   rcb->nseg*sizeof(sgt_t));

 pqisrc_put_tag(&softs->taglist, rcb->tag);

 DBG_IO("OUT\n");
}
