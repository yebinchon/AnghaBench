
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vmbus_softc {int dummy; } ;
struct vmbus_msghc {int dummy; } ;
struct vmbus_channel {int ch_stflags; scalar_t__ ch_bufring_gpadl; int * ch_bufring; int ch_bufring_dma; int ch_id; int * ch_tq; int ch_task; int ch_sysctl_ctx; struct vmbus_softc* ch_vmbus; } ;
struct TYPE_2__ {int chm_type; } ;
struct vmbus_chanmsg_chclose {int chm_chanid; TYPE_1__ chm_hdr; } ;


 int EISCONN ;
 int ENXIO ;
 int VMBUS_CHANMSG_TYPE_CHCLOSE ;
 int VMBUS_CHAN_ST_OPENED ;
 scalar_t__ atomic_cmpset_int (int*,int,int) ;
 scalar_t__ bootverbose ;
 int hyperv_dmamem_free (int *,int *) ;
 int sysctl_ctx_free (int *) ;
 int taskqueue_drain (int *,int *) ;
 int vmbus_chan_clear_chmap (struct vmbus_channel*) ;
 int vmbus_chan_gpadl_disconnect (struct vmbus_channel*,scalar_t__) ;
 int vmbus_chan_poll_cancel (struct vmbus_channel*) ;
 int vmbus_chan_printf (struct vmbus_channel*,char*,int ,...) ;
 struct vmbus_chanmsg_chclose* vmbus_msghc_dataptr (struct vmbus_msghc*) ;
 int vmbus_msghc_exec_noresult (struct vmbus_msghc*) ;
 struct vmbus_msghc* vmbus_msghc_get (struct vmbus_softc*,int) ;
 int vmbus_msghc_put (struct vmbus_softc*,struct vmbus_msghc*) ;

__attribute__((used)) static int
vmbus_chan_close_internal(struct vmbus_channel *chan)
{
 struct vmbus_softc *sc = chan->ch_vmbus;
 struct vmbus_msghc *mh;
 struct vmbus_chanmsg_chclose *req;
 uint32_t old_stflags;
 int error;






 for (;;) {
  old_stflags = chan->ch_stflags;
  if (atomic_cmpset_int(&chan->ch_stflags, old_stflags,
      old_stflags & ~VMBUS_CHAN_ST_OPENED))
   break;
 }
 if ((old_stflags & VMBUS_CHAN_ST_OPENED) == 0) {

  if (bootverbose) {
   vmbus_chan_printf(chan, "chan%u not opened\n",
       chan->ch_id);
  }
  return (0);
 }





 sysctl_ctx_free(&chan->ch_sysctl_ctx);




 vmbus_chan_poll_cancel(chan);







 vmbus_chan_clear_chmap(chan);
 taskqueue_drain(chan->ch_tq, &chan->ch_task);
 chan->ch_tq = ((void*)0);




 mh = vmbus_msghc_get(sc, sizeof(*req));
 if (mh == ((void*)0)) {
  vmbus_chan_printf(chan,
      "can not get msg hypercall for chclose(chan%u)\n",
      chan->ch_id);
  error = ENXIO;
  goto disconnect;
 }

 req = vmbus_msghc_dataptr(mh);
 req->chm_hdr.chm_type = VMBUS_CHANMSG_TYPE_CHCLOSE;
 req->chm_chanid = chan->ch_id;

 error = vmbus_msghc_exec_noresult(mh);
 vmbus_msghc_put(sc, mh);

 if (error) {
  vmbus_chan_printf(chan,
      "chclose(chan%u) msg hypercall exec failed: %d\n",
      chan->ch_id, error);
  goto disconnect;
 }

 if (bootverbose)
  vmbus_chan_printf(chan, "chan%u closed\n", chan->ch_id);

disconnect:



 if (chan->ch_bufring_gpadl != 0) {
  int error1;

  error1 = vmbus_chan_gpadl_disconnect(chan,
      chan->ch_bufring_gpadl);
  if (error1) {






   vmbus_chan_printf(chan, "chan%u bufring GPADL "
       "is still connected after close\n", chan->ch_id);
   chan->ch_bufring = ((void*)0);




   error = EISCONN;
  }
  chan->ch_bufring_gpadl = 0;
 }




 if (chan->ch_bufring != ((void*)0)) {
  hyperv_dmamem_free(&chan->ch_bufring_dma, chan->ch_bufring);
  chan->ch_bufring = ((void*)0);
 }
 return (error);
}
