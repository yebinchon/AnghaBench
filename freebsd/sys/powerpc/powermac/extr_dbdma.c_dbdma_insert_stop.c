
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dbdma_channel_t ;


 int DBDMA_NEVER ;
 int DBDMA_STOP ;
 int dbdma_insert_command (int *,int,int ,int ,int ,int ,int ,int ,int ,int ) ;

void
dbdma_insert_stop(dbdma_channel_t *chan, int slot)
{

 dbdma_insert_command(chan, slot, DBDMA_STOP, 0, 0, 0, DBDMA_NEVER,
     DBDMA_NEVER, DBDMA_NEVER, 0);
}
