
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dbdma_channel_t ;


 int DBDMA_ALWAYS ;
 int DBDMA_NEVER ;
 int DBDMA_NOP ;
 int dbdma_insert_command (int *,int,int ,int ,int ,int ,int ,int ,int ,int) ;

void
dbdma_insert_branch(dbdma_channel_t *chan, int slot, int to_slot)
{

 dbdma_insert_command(chan, slot, DBDMA_NOP, 0, 0, 0, DBDMA_NEVER,
     DBDMA_ALWAYS, DBDMA_NEVER, to_slot);
}
