
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vmbus_chan_callback_t ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int task_fn_t ;
struct vmbus_softc {int dummy; } ;
struct vmbus_msghc {int dummy; } ;
struct vmbus_message {scalar_t__ msg_data; } ;
struct vmbus_channel {int ch_flags; scalar_t__ ch_bufring_gpadl; int ch_stflags; int ch_sysctl_ctx; int ch_id; int ch_vcpuid; int ch_rxbr; int ch_txbr; int ch_task; int ch_cpuid; struct vmbus_softc* ch_vmbus; int ch_tq; void* ch_cbarg; int ch_cb; } ;
struct vmbus_chanmsg_chopen_resp {int chm_status; } ;
struct TYPE_2__ {int chm_type; } ;
struct vmbus_chanmsg_chopen {scalar_t__ chm_gpadl; int chm_txbr_pgcnt; int chm_udata; int chm_vcpuid; int chm_openid; int chm_chanid; TYPE_1__ chm_hdr; } ;
struct vmbus_chan_br {int cbr_txsz; int cbr_rxsz; int cbr_paddr; int * cbr; } ;


 int EINVAL ;
 int EISCONN ;
 int ENXIO ;
 int KASSERT (int,char*) ;
 int PAGE_MASK ;
 int PAGE_SHIFT ;
 int REVOKE_LINGER ;
 int TASK_INIT (int *,int ,int *,struct vmbus_channel*) ;
 int VMBUS_CHANMSG_CHOPEN_UDATA_SIZE ;
 int VMBUS_CHANMSG_TYPE_CHOPEN ;
 int VMBUS_CHAN_FLAG_BATCHREAD ;
 int VMBUS_CHAN_ST_OPENED ;
 int VMBUS_CHAN_ST_OPENED_SHIFT ;
 int VMBUS_PCPU_GET (struct vmbus_softc*,int ,int ) ;
 int atomic_clear_int (int *,int ) ;
 scalar_t__ atomic_testandset_int (int *,int ) ;
 scalar_t__ bootverbose ;
 int event_tq ;
 int memcpy (int ,void const*,int) ;
 int memset (int *,int ,int) ;
 int panic (char*,int ) ;
 int pause (char*,int) ;
 int sysctl_ctx_free (int *) ;
 int vmbus_chan_clear_chmap (struct vmbus_channel*) ;
 int vmbus_chan_gpadl_connect (struct vmbus_channel*,int,int,scalar_t__*) ;
 int vmbus_chan_gpadl_disconnect (struct vmbus_channel*,scalar_t__) ;
 scalar_t__ vmbus_chan_is_revoked (struct vmbus_channel*) ;
 int vmbus_chan_printf (struct vmbus_channel*,char*,int,...) ;
 int vmbus_chan_set_chmap (struct vmbus_channel*) ;
 int vmbus_chan_sysctl_create (struct vmbus_channel*) ;
 int * vmbus_chan_task ;
 int * vmbus_chan_task_nobatch ;
 int vmbus_chan_update_evtflagcnt (struct vmbus_softc*,struct vmbus_channel*) ;
 struct vmbus_chanmsg_chopen* vmbus_msghc_dataptr (struct vmbus_msghc*) ;
 int vmbus_msghc_exec (struct vmbus_softc*,struct vmbus_msghc*) ;
 int vmbus_msghc_exec_cancel (struct vmbus_softc*,struct vmbus_msghc*) ;
 struct vmbus_msghc* vmbus_msghc_get (struct vmbus_softc*,int) ;
 struct vmbus_message* vmbus_msghc_poll_result (struct vmbus_softc*,struct vmbus_msghc*) ;
 int vmbus_msghc_put (struct vmbus_softc*,struct vmbus_msghc*) ;
 int vmbus_rxbr_setup (int *,int *,int) ;
 int vmbus_txbr_setup (int *,int *,int) ;

int
vmbus_chan_open_br(struct vmbus_channel *chan, const struct vmbus_chan_br *cbr,
    const void *udata, int udlen, vmbus_chan_callback_t cb, void *cbarg)
{
 struct vmbus_softc *sc = chan->ch_vmbus;
 const struct vmbus_message *msg;
 struct vmbus_chanmsg_chopen *req;
 struct vmbus_msghc *mh;
 uint32_t status;
 int error, txbr_size, rxbr_size;
 task_fn_t *task_fn;
 uint8_t *br;

 if (udlen > VMBUS_CHANMSG_CHOPEN_UDATA_SIZE) {
  vmbus_chan_printf(chan,
      "invalid udata len %d for chan%u\n", udlen, chan->ch_id);
  return (EINVAL);
 }

 br = cbr->cbr;
 txbr_size = cbr->cbr_txsz;
 rxbr_size = cbr->cbr_rxsz;
 KASSERT((txbr_size & PAGE_MASK) == 0,
     ("send bufring size is not multiple page"));
 KASSERT((rxbr_size & PAGE_MASK) == 0,
     ("recv bufring size is not multiple page"));
 KASSERT((cbr->cbr_paddr & PAGE_MASK) == 0,
     ("bufring is not page aligned"));




 memset(br, 0, txbr_size + rxbr_size);

 if (atomic_testandset_int(&chan->ch_stflags,
     VMBUS_CHAN_ST_OPENED_SHIFT))
  panic("double-open chan%u", chan->ch_id);

 chan->ch_cb = cb;
 chan->ch_cbarg = cbarg;

 vmbus_chan_update_evtflagcnt(sc, chan);

 chan->ch_tq = VMBUS_PCPU_GET(chan->ch_vmbus, event_tq, chan->ch_cpuid);
 if (chan->ch_flags & VMBUS_CHAN_FLAG_BATCHREAD)
  task_fn = vmbus_chan_task;
 else
  task_fn = vmbus_chan_task_nobatch;
 TASK_INIT(&chan->ch_task, 0, task_fn, chan);


 vmbus_txbr_setup(&chan->ch_txbr, br, txbr_size);

 vmbus_rxbr_setup(&chan->ch_rxbr, br + txbr_size, rxbr_size);


 vmbus_chan_sysctl_create(chan);




 error = vmbus_chan_gpadl_connect(chan, cbr->cbr_paddr,
     txbr_size + rxbr_size, &chan->ch_bufring_gpadl);
 if (error) {
  vmbus_chan_printf(chan,
      "failed to connect bufring GPADL to chan%u\n", chan->ch_id);
  goto failed;
 }





 vmbus_chan_set_chmap(chan);




 mh = vmbus_msghc_get(sc, sizeof(*req));
 if (mh == ((void*)0)) {
  vmbus_chan_printf(chan,
      "can not get msg hypercall for chopen(chan%u)\n",
      chan->ch_id);
  error = ENXIO;
  goto failed;
 }

 req = vmbus_msghc_dataptr(mh);
 req->chm_hdr.chm_type = VMBUS_CHANMSG_TYPE_CHOPEN;
 req->chm_chanid = chan->ch_id;
 req->chm_openid = chan->ch_id;
 req->chm_gpadl = chan->ch_bufring_gpadl;
 req->chm_vcpuid = chan->ch_vcpuid;
 req->chm_txbr_pgcnt = txbr_size >> PAGE_SHIFT;
 if (udlen > 0)
  memcpy(req->chm_udata, udata, udlen);

 error = vmbus_msghc_exec(sc, mh);
 if (error) {
  vmbus_chan_printf(chan,
      "chopen(chan%u) msg hypercall exec failed: %d\n",
      chan->ch_id, error);
  vmbus_msghc_put(sc, mh);
  goto failed;
 }

 for (;;) {
  msg = vmbus_msghc_poll_result(sc, mh);
  if (msg != ((void*)0))
   break;
  if (vmbus_chan_is_revoked(chan)) {
   int i;






   vmbus_chan_printf(chan,
       "chan%u is revoked, when it is being opened\n",
       chan->ch_id);
   for (i = 0; i < 100; ++i) {
    msg = vmbus_msghc_poll_result(sc, mh);
    if (msg != ((void*)0))
     break;
    pause("rchopen", 1);
   }

   if (msg == ((void*)0))
    vmbus_msghc_exec_cancel(sc, mh);
   break;
  }
  pause("chopen", 1);
 }
 if (msg != ((void*)0)) {
  status = ((const struct vmbus_chanmsg_chopen_resp *)
      msg->msg_data)->chm_status;
 } else {

  status = 0xff;
 }

 vmbus_msghc_put(sc, mh);

 if (status == 0) {
  if (bootverbose)
   vmbus_chan_printf(chan, "chan%u opened\n", chan->ch_id);
  return (0);
 }

 vmbus_chan_printf(chan, "failed to open chan%u\n", chan->ch_id);
 error = ENXIO;

failed:
 sysctl_ctx_free(&chan->ch_sysctl_ctx);
 vmbus_chan_clear_chmap(chan);
 if (chan->ch_bufring_gpadl != 0) {
  int error1;

  error1 = vmbus_chan_gpadl_disconnect(chan,
      chan->ch_bufring_gpadl);
  if (error1) {




   error = EISCONN;
  }
  chan->ch_bufring_gpadl = 0;
 }
 atomic_clear_int(&chan->ch_stflags, VMBUS_CHAN_ST_OPENED);
 return (error);
}
