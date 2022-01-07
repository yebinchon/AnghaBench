
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ata_dbdma_dmaload_args {int nsegs; scalar_t__ write; struct ata_dbdma_channel* sc; } ;
struct ata_dbdma_channel {int next_dma_slot; int dbdma_mtx; int dbdma; } ;
struct TYPE_3__ {int ds_len; int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;


 int BUS_DMASYNC_PREWRITE ;
 int DBDMA_ALWAYS ;
 int DBDMA_INPUT_LAST ;
 int DBDMA_INPUT_MORE ;
 int DBDMA_NEVER ;
 int DBDMA_NOP ;
 int DBDMA_OUTPUT_LAST ;
 int DBDMA_OUTPUT_MORE ;
 int dbdma_insert_branch (int ,int,int ) ;
 int dbdma_insert_command (int ,int ,int,int ,int ,int ,int,int,int,int ) ;
 int dbdma_insert_nop (int ,int) ;
 int dbdma_insert_stop (int ,int ) ;
 int dbdma_sync_commands (int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
ata_dbdma_setprd(void *xarg, bus_dma_segment_t *segs, int nsegs, int error)
{
 struct ata_dbdma_dmaload_args *arg = xarg;
 struct ata_dbdma_channel *sc = arg->sc;
 int branch_type, command;
 int prev_stop;
 int i;

 mtx_lock(&sc->dbdma_mtx);

 prev_stop = sc->next_dma_slot-1;
 if (prev_stop < 0)
  prev_stop = 0xff;

 for (i = 0; i < nsegs; i++) {

  if (sc->next_dma_slot == 0xff)
   branch_type = DBDMA_ALWAYS;
  else
   branch_type = DBDMA_NEVER;

  if (arg->write) {
   command = (i + 1 < nsegs) ? DBDMA_OUTPUT_MORE :
       DBDMA_OUTPUT_LAST;
  } else {
   command = (i + 1 < nsegs) ? DBDMA_INPUT_MORE :
       DBDMA_INPUT_LAST;
  }

  dbdma_insert_command(sc->dbdma, sc->next_dma_slot++,
      command, 0, segs[i].ds_addr, segs[i].ds_len,
      DBDMA_NEVER, branch_type, DBDMA_NEVER, 0);

  if (branch_type == DBDMA_ALWAYS)
   sc->next_dma_slot = 0;
 }





 if (sc->next_dma_slot == 0xff) {
  dbdma_insert_branch(sc->dbdma, sc->next_dma_slot, 0);
  sc->next_dma_slot = 0;
 }





 dbdma_insert_stop(sc->dbdma, sc->next_dma_slot++);
 dbdma_insert_nop(sc->dbdma, prev_stop);

 dbdma_sync_commands(sc->dbdma, BUS_DMASYNC_PREWRITE);

 mtx_unlock(&sc->dbdma_mtx);

 arg->nsegs = nsegs;
}
