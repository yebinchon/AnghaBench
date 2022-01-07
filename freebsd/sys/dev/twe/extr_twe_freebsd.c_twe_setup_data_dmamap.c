
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


struct twe_softc {int twe_state; int twe_buffer_dmat; int twe_immediate_map; int twe_immediate_dmat; } ;
struct twe_request {int tr_flags; struct twe_softc* tr_sc; int tr_dmamap; int tr_length; int tr_data; int tr_realdata; int tr_dataphys; } ;
struct TYPE_14__ {int ds_addr; } ;
typedef TYPE_5__ bus_dma_segment_t ;
struct TYPE_13__ {int * sgl; } ;
struct TYPE_12__ {int * sgl; } ;
struct TYPE_11__ {int * sgl; } ;
struct TYPE_10__ {int size; int opcode; int sgl_offset; } ;
struct TYPE_15__ {TYPE_4__ ata; TYPE_3__ io; TYPE_2__ param; TYPE_1__ generic; } ;
typedef TYPE_6__ TWE_Command ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 scalar_t__ EBUSY ;
 int TWE_CMD_ALIGNBUF ;
 int TWE_CMD_DATAIN ;
 int TWE_CMD_DATAOUT ;
 int TWE_CMD_IMMEDIATE ;
 int TWE_CMD_IN_PROGRESS ;
 int TWE_CMD_MAPPED ;
 TYPE_6__* TWE_FIND_COMMAND (struct twe_request*) ;
 int TWE_MAX_ATA_SGL_LENGTH ;
 int TWE_MAX_SGL_LENGTH ;





 int TWE_STATE_CTLR_BUSY ;
 int TWE_STATE_FRZN ;
 int bcopy (int ,int ,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int debug_called (int) ;
 int panic (char*) ;
 int twe_fillin_sgl (int *,TYPE_5__*,int,int ) ;
 int twe_requeue_ready (struct twe_request*) ;
 scalar_t__ twe_start (struct twe_request*) ;

__attribute__((used)) static void
twe_setup_data_dmamap(void *arg, bus_dma_segment_t *segs, int nsegments, int error)
{
    struct twe_request *tr = (struct twe_request *)arg;
    struct twe_softc *sc = tr->tr_sc;
    TWE_Command *cmd = TWE_FIND_COMMAND(tr);

    debug_called(4);

    if (tr->tr_flags & TWE_CMD_MAPPED)
 panic("already mapped command");

    tr->tr_flags |= TWE_CMD_MAPPED;

    if (tr->tr_flags & TWE_CMD_IN_PROGRESS)
 sc->twe_state &= ~TWE_STATE_FRZN;

    tr->tr_dataphys = segs[0].ds_addr;


    cmd->generic.size += 2 * nsegments;






    switch(cmd->generic.opcode) {
    case 131:
    case 129:
 cmd->generic.sgl_offset = 2;
 twe_fillin_sgl(&cmd->param.sgl[0], segs, nsegments, TWE_MAX_SGL_LENGTH);
 break;
    case 130:
    case 128:
 cmd->generic.sgl_offset = 3;
 twe_fillin_sgl(&cmd->io.sgl[0], segs, nsegments, TWE_MAX_SGL_LENGTH);
 break;
    case 132:
 cmd->generic.sgl_offset = 5;
 twe_fillin_sgl(&cmd->ata.sgl[0], segs, nsegments, TWE_MAX_ATA_SGL_LENGTH);
 break;
    default:






 switch (cmd->generic.sgl_offset) {
 case 2:
     twe_fillin_sgl(&cmd->param.sgl[0], segs, nsegments, TWE_MAX_SGL_LENGTH);
     break;
 case 3:
     twe_fillin_sgl(&cmd->io.sgl[0], segs, nsegments, TWE_MAX_SGL_LENGTH);
     break;
 case 5:
     twe_fillin_sgl(&cmd->ata.sgl[0], segs, nsegments, TWE_MAX_ATA_SGL_LENGTH);
     break;
 }
    }

    if (tr->tr_flags & TWE_CMD_DATAIN) {
 if (tr->tr_flags & TWE_CMD_IMMEDIATE) {
     bus_dmamap_sync(sc->twe_immediate_dmat, sc->twe_immediate_map,
       BUS_DMASYNC_PREREAD);
 } else {
     bus_dmamap_sync(sc->twe_buffer_dmat, tr->tr_dmamap,
       BUS_DMASYNC_PREREAD);
 }
    }

    if (tr->tr_flags & TWE_CMD_DATAOUT) {




 if (tr->tr_flags & TWE_CMD_ALIGNBUF)
     bcopy(tr->tr_realdata, tr->tr_data, tr->tr_length);

 if (tr->tr_flags & TWE_CMD_IMMEDIATE) {
     bus_dmamap_sync(sc->twe_immediate_dmat, sc->twe_immediate_map,
       BUS_DMASYNC_PREWRITE);
 } else {
     bus_dmamap_sync(sc->twe_buffer_dmat, tr->tr_dmamap,
       BUS_DMASYNC_PREWRITE);
 }
    }

    if (twe_start(tr) == EBUSY) {
 tr->tr_sc->twe_state |= TWE_STATE_CTLR_BUSY;
 twe_requeue_ready(tr);
    }
}
