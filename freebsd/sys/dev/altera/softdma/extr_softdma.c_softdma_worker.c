
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ transferred; scalar_t__ error; } ;
typedef TYPE_1__ xdma_transfer_status_t ;
struct softdma_softc {int dummy; } ;
struct softdma_channel {scalar_t__ run; int mtx; int xchan; struct softdma_softc* sc; } ;


 int hz ;
 int mtx_lock (int *) ;
 int mtx_sleep (struct softdma_channel*,int *,int ,char*,int) ;
 int mtx_unlock (int *) ;
 int softdma_process_descriptors (struct softdma_channel*,TYPE_1__*) ;
 int xdma_callback (int ,TYPE_1__*) ;

__attribute__((used)) static void
softdma_worker(void *arg)
{
 xdma_transfer_status_t status;
 struct softdma_channel *chan;
 struct softdma_softc *sc;

 chan = arg;

 sc = chan->sc;

 while (1) {
  mtx_lock(&chan->mtx);

  do {
   mtx_sleep(chan, &chan->mtx, 0, "softdma_wait", hz / 2);
  } while (chan->run == 0);

  status.error = 0;
  status.transferred = 0;

  softdma_process_descriptors(chan, &status);


  chan->run = 0;
  xdma_callback(chan->xchan, &status);

  mtx_unlock(&chan->mtx);
 }

}
