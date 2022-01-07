
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dbdma_channel_t ;


 int dbdma_run (int *) ;
 int dbdma_set_current_cmd (int *,int ) ;
 int dbdma_stop (int *) ;

void
dbdma_reset(dbdma_channel_t *chan)
{

 dbdma_stop(chan);
 dbdma_set_current_cmd(chan, 0);
 dbdma_run(chan);
}
