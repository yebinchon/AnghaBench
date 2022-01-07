
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct aoa_dma {int bufsz; int slots; int blksz; int channel; int buf; } ;


 int BUS_DMASYNC_PREWRITE ;
 int DBDMA_ALWAYS ;
 int DBDMA_COND_TRUE ;
 int DBDMA_NEVER ;
 int DBDMA_OUTPUT_MORE ;
 int KASSERT (int,char*) ;
 int dbdma_insert_branch (int ,int,int ) ;
 int dbdma_insert_command (int ,int,int ,int ,scalar_t__,int,int ,int ,int ,int) ;
 int dbdma_insert_stop (int ,int) ;
 int dbdma_set_branch_selector (int ,int,int) ;
 int dbdma_set_device_status (int ,int,int ) ;
 int dbdma_sync_commands (int ,int ) ;
 scalar_t__ sndbuf_getbufaddr (int ) ;
 int sndbuf_getsize (int ) ;

__attribute__((used)) static void
aoa_dma_set_program(struct aoa_dma *dma)
{
 u_int32_t addr;
 int i;

 addr = (u_int32_t) sndbuf_getbufaddr(dma->buf);
 KASSERT(dma->bufsz == sndbuf_getsize(dma->buf), ("bad size"));

 dma->slots = dma->bufsz / dma->blksz;

 for (i = 0; i < dma->slots; ++i) {
  dbdma_insert_command(dma->channel,
      i,
      DBDMA_OUTPUT_MORE,
      0,
      addr,
      dma->blksz,
      DBDMA_ALWAYS,
      DBDMA_COND_TRUE,
      DBDMA_NEVER,
      dma->slots + 1
  );

  addr += dma->blksz;
 }


 dbdma_insert_branch(dma->channel, dma->slots, 0);


 dbdma_insert_stop(dma->channel, dma->slots + 1);


 dbdma_set_branch_selector(dma->channel, 1 << 0, 1 << 0);
 dbdma_set_device_status(dma->channel, 1 << 0, 0);

 dbdma_sync_commands(dma->channel, BUS_DMASYNC_PREWRITE);
}
