
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct msgdma_channel {int map_err; size_t map_descr; TYPE_1__* descs_phys; } ;
struct TYPE_5__ {int ds_len; int ds_addr; } ;
typedef TYPE_2__ bus_dma_segment_t ;
struct TYPE_4__ {int ds_len; int ds_addr; } ;


 int KASSERT (int ,char*) ;
 int dprintf (char*,size_t,int ,int ) ;

__attribute__((used)) static void
msgdma_dmamap_cb(void *arg, bus_dma_segment_t *segs, int nseg, int err)
{
 struct msgdma_channel *chan;

 chan = (struct msgdma_channel *)arg;
 KASSERT(chan != ((void*)0), ("xchan is NULL"));

 if (err) {
  chan->map_err = 1;
  return;
 }

 chan->descs_phys[chan->map_descr].ds_addr = segs[0].ds_addr;
 chan->descs_phys[chan->map_descr].ds_len = segs[0].ds_len;

 dprintf("map desc %d: descs phys %lx len %ld\n",
     chan->map_descr, segs[0].ds_addr, segs[0].ds_len);
}
