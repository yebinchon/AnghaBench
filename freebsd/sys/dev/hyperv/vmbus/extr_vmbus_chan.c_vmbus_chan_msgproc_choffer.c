
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int task_fn_t ;
struct vmbus_softc {scalar_t__ vmbus_version; int vmbus_dev; int vmbus_subchtq; int vmbus_devtq; int * vmbus_tx_evtflags; TYPE_3__* vmbus_mnf2; } ;
struct vmbus_message {scalar_t__ msg_data; } ;
struct vmbus_channel {size_t ch_id; int ch_montrig_mask; unsigned long ch_evtflag_mask; int ch_attach_task; int ch_mgmt_tq; int ch_refs; int ch_detach_task; int * ch_evtflag; int * ch_montrig; int ch_txflags; TYPE_1__* ch_monprm; int ch_flags; int ch_guid_inst; int ch_guid_type; int ch_subidx; } ;
struct vmbus_chanmsg_choffer {size_t chm_chanid; int chm_flags1; int chm_montrig; int chm_connid; int chm_chinst; int chm_chtype; int chm_subidx; } ;
struct TYPE_6__ {TYPE_2__* mnf_trigs; } ;
struct TYPE_5__ {int mt_pending; } ;
struct TYPE_4__ {int mp_connid; } ;


 int TASK_INIT (int *,int ,int *,struct vmbus_channel*) ;
 int VMBUS_CHAN_FLAG_BATCHREAD ;
 scalar_t__ VMBUS_CHAN_ISPRIMARY (struct vmbus_channel*) ;
 int VMBUS_CHAN_TXF_HASMNF ;
 int VMBUS_CHOFFER_FLAG1_HASMNF ;
 int VMBUS_CONNID_EVENT ;
 unsigned long VMBUS_EVTFLAG_MASK ;
 size_t VMBUS_EVTFLAG_SHIFT ;
 int VMBUS_MONTRIGS_MAX ;
 int VMBUS_MONTRIG_LEN ;
 scalar_t__ VMBUS_VERSION_WS2008 ;
 int atomic_subtract_int (int *,int) ;
 int device_printf (int ,char*,unsigned long,...) ;
 int panic (char*,int) ;
 int taskqueue_enqueue (int ,int *) ;
 int vmbus_chan_add (struct vmbus_channel*) ;
 struct vmbus_channel* vmbus_chan_alloc (struct vmbus_softc*) ;
 int vmbus_chan_free (struct vmbus_channel*) ;
 int * vmbus_prichan_attach_task ;
 int * vmbus_prichan_detach_task ;
 int * vmbus_subchan_attach_task ;
 int * vmbus_subchan_detach_task ;

__attribute__((used)) static void
vmbus_chan_msgproc_choffer(struct vmbus_softc *sc,
    const struct vmbus_message *msg)
{
 const struct vmbus_chanmsg_choffer *offer;
 struct vmbus_channel *chan;
 task_fn_t *detach_fn, *attach_fn;
 int error;

 offer = (const struct vmbus_chanmsg_choffer *)msg->msg_data;

 chan = vmbus_chan_alloc(sc);
 if (chan == ((void*)0)) {
  device_printf(sc->vmbus_dev, "allocate chan%u failed\n",
      offer->chm_chanid);
  return;
 }

 chan->ch_id = offer->chm_chanid;
 chan->ch_subidx = offer->chm_subidx;
 chan->ch_guid_type = offer->chm_chtype;
 chan->ch_guid_inst = offer->chm_chinst;


 chan->ch_flags |= VMBUS_CHAN_FLAG_BATCHREAD;

 chan->ch_monprm->mp_connid = VMBUS_CONNID_EVENT;
 if (sc->vmbus_version != VMBUS_VERSION_WS2008)
  chan->ch_monprm->mp_connid = offer->chm_connid;

 if (offer->chm_flags1 & VMBUS_CHOFFER_FLAG1_HASMNF) {
  int trig_idx;




  chan->ch_txflags |= VMBUS_CHAN_TXF_HASMNF;

  trig_idx = offer->chm_montrig / VMBUS_MONTRIG_LEN;
  if (trig_idx >= VMBUS_MONTRIGS_MAX)
   panic("invalid monitor trigger %u", offer->chm_montrig);
  chan->ch_montrig =
      &sc->vmbus_mnf2->mnf_trigs[trig_idx].mt_pending;

  chan->ch_montrig_mask =
      1 << (offer->chm_montrig % VMBUS_MONTRIG_LEN);
 }




 chan->ch_evtflag =
     &sc->vmbus_tx_evtflags[chan->ch_id >> VMBUS_EVTFLAG_SHIFT];
 chan->ch_evtflag_mask = 1UL << (chan->ch_id & VMBUS_EVTFLAG_MASK);




 if (VMBUS_CHAN_ISPRIMARY(chan)) {
  chan->ch_mgmt_tq = sc->vmbus_devtq;
  attach_fn = vmbus_prichan_attach_task;
  detach_fn = vmbus_prichan_detach_task;
 } else {
  chan->ch_mgmt_tq = sc->vmbus_subchtq;
  attach_fn = vmbus_subchan_attach_task;
  detach_fn = vmbus_subchan_detach_task;
 }
 TASK_INIT(&chan->ch_attach_task, 0, attach_fn, chan);
 TASK_INIT(&chan->ch_detach_task, 0, detach_fn, chan);

 error = vmbus_chan_add(chan);
 if (error) {
  device_printf(sc->vmbus_dev, "add chan%u failed: %d\n",
      chan->ch_id, error);
  atomic_subtract_int(&chan->ch_refs, 1);
  vmbus_chan_free(chan);
  return;
 }
 taskqueue_enqueue(chan->ch_mgmt_tq, &chan->ch_attach_task);
}
