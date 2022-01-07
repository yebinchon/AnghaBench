
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aoa_dma {int running; int slots; int mutex; int channel; int slot; } ;
typedef int kobj_t ;


 int DELAY (int) ;



 int dbdma_clear_cmd_status (int ,int) ;
 int dbdma_run (int ) ;
 int dbdma_set_current_cmd (int ,int ) ;
 int dbdma_set_device_status (int ,int,int) ;
 int dbdma_stop (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
aoa_chan_trigger(kobj_t obj, void *data, int go)
{
 struct aoa_dma *dma = data;
 int i;

 switch (go) {
 case 129:


  dma->running = 1;

  dma->slot = 0;
  dbdma_set_current_cmd(dma->channel, dma->slot);

  dbdma_run(dma->channel);

  return (0);

 case 128:
 case 130:

  mtx_lock(&dma->mutex);

  dma->running = 0;


  dbdma_set_device_status(dma->channel, 1 << 0, 1 << 0);


  DELAY(40000);


  dbdma_stop(dma->channel);
  dbdma_set_device_status(dma->channel, 1 << 0, 0);

  for (i = 0; i < dma->slots; ++i)
   dbdma_clear_cmd_status(dma->channel, i);

  mtx_unlock(&dma->mutex);

  return (0);
 }

 return (0);
}
