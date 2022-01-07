
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ error; } ;
typedef TYPE_1__ xdma_transfer_status_t ;
typedef int xdma_channel_t ;
struct xdma_request {int block_num; } ;
struct pdma_softc {int dummy; } ;
struct pdma_channel {int flags; int cur_desc; int * xchan; int index; struct xdma_request* req; } ;


 int CHAN_DESCR_RELINK ;
 int PDMA_DCS (int ) ;
 int PDMA_DIRQP ;
 int PDMA_NCHANNELS ;
 int READ4 (struct pdma_softc*,int ) ;
 int WRITE4 (struct pdma_softc*,int ,int ) ;
 int chan_start (struct pdma_softc*,struct pdma_channel*) ;
 struct pdma_channel* pdma_channels ;
 int xdma_callback (int *,TYPE_1__*) ;

__attribute__((used)) static void
pdma_intr(void *arg)
{
 struct xdma_request *req;
 xdma_transfer_status_t status;
 struct pdma_channel *chan;
 struct pdma_softc *sc;
 xdma_channel_t *xchan;
 int pending;
 int i;

 sc = arg;

 pending = READ4(sc, PDMA_DIRQP);


 WRITE4(sc, PDMA_DIRQP, 0);

 for (i = 0; i < PDMA_NCHANNELS; i++) {
  if (pending & (1 << i)) {
   chan = &pdma_channels[i];
   xchan = chan->xchan;
   req = chan->req;




   WRITE4(sc, PDMA_DCS(chan->index), 0);

   if (chan->flags & CHAN_DESCR_RELINK) {

    chan->cur_desc = (chan->cur_desc + 1) % req->block_num;

    chan_start(sc, chan);
   }

   status.error = 0;
   xdma_callback(chan->xchan, &status);
  }
 }
}
