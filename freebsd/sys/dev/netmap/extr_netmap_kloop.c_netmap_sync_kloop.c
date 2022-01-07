
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct sync_kloop_ring_args {int busy_wait; int direct; int num_entries; int num_tx_rings; int num_rings; int next_entry; struct sync_kloop_poll_entry* entries; int wait_table; int * next_wake_fun; struct file* irq_ctx; struct nm_csb_ktoa* csb_ktoa; struct nm_csb_atok* csb_atok; void* kring; } ;
struct sync_kloop_poll_entry {scalar_t__ filp; scalar_t__ irq_filp; struct file* irq_ctx; int wait; scalar_t__ wqh; struct sync_kloop_ring_args* args; struct sync_kloop_ring_args* parent; } ;
struct sync_kloop_poll_ctx {int busy_wait; int direct; int num_entries; int num_tx_rings; int num_rings; int next_entry; struct sync_kloop_poll_entry* entries; int wait_table; int * next_wake_fun; struct file* irq_ctx; struct nm_csb_ktoa* csb_ktoa; struct nm_csb_atok* csb_atok; void* kring; } ;
struct nmreq_sync_kloop_start {int sleep_us; } ;
struct nmreq_option {int nro_status; int nro_size; } ;
struct nmreq_opt_sync_kloop_mode {int mode; } ;
struct nmreq_opt_sync_kloop_eventfds {TYPE_1__* eventfds; } ;
struct nmreq_header {scalar_t__ nr_body; } ;
struct nm_csb_ktoa {int dummy; } ;
struct nm_csb_atok {int dummy; } ;
struct netmap_priv_d {int np_kloop_state; int* np_qlast; int* np_qfirst; scalar_t__ np_filp; int * np_si; struct nm_csb_ktoa* np_csb_ktoa_base; struct nm_csb_atok* np_csb_atok_base; struct netmap_adapter* np_na; int * np_nifp; } ;
struct netmap_adapter {int na_flags; int name; } ;
struct file {TYPE_2__* f_op; } ;
struct eventfd_ctx {TYPE_2__* f_op; } ;
typedef int args ;
struct TYPE_4__ {unsigned long (* poll ) (struct file*,int *) ;} ;
struct TYPE_3__ {scalar_t__ ioeventfd; scalar_t__ irqfd; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct file*) ;
 int NAF_BDG_MAYSLEEP ;
 int NETMAP_REQ_OPT_SYNC_KLOOP_EVENTFDS ;
 int NETMAP_REQ_OPT_SYNC_KLOOP_MODE ;
 int NMG_LOCK () ;
 int NMG_UNLOCK () ;
 void** NMR (struct netmap_adapter*,size_t) ;
 int NM_ACCESS_ONCE (int) ;
 int NM_OPT_SYNC_KLOOP_DIRECT_RX ;
 int NM_OPT_SYNC_KLOOP_DIRECT_TX ;
 int NM_SYNC_KLOOP_RUNNING ;
 int NM_SYNC_KLOOP_STOPPING ;
 size_t NR_RX ;
 size_t NR_TX ;
 unsigned long POLLERR ;
 int PTR_ERR (struct file*) ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 struct file* eventfd_ctx_fileget (struct file*) ;
 int eventfd_ctx_put (struct file*) ;
 struct file* eventfd_fget (scalar_t__) ;
 int fput (scalar_t__) ;
 int init_poll_funcptr (int *,int ) ;
 int mb () ;
 int msecs_to_jiffies (int) ;
 int netmap_sync_kloop_rx_ring (struct sync_kloop_ring_args*) ;
 int netmap_sync_kloop_tx_ring (struct sync_kloop_ring_args*) ;
 int nm_netmap_on (struct netmap_adapter*) ;
 int nm_os_free (struct sync_kloop_ring_args*) ;
 struct sync_kloop_ring_args* nm_os_malloc (int) ;
 int nm_prerr (char*,int ) ;
 int nm_prinf (char*,int,int,int,int) ;
 struct nmreq_option* nmreq_getoption (struct nmreq_header*,int ) ;
 int poll_wait (scalar_t__,int ,int *) ;
 int remove_wait_queue (scalar_t__,int *) ;
 int schedule_timeout (int ) ;
 int set_current_state (int ) ;
 unsigned long stub1 (struct file*,int *) ;
 int sync_kloop_poll_table_queue_proc ;
 int * sync_kloop_rx_irq_wake_fun ;
 int * sync_kloop_rx_kick_wake_fun ;
 int * sync_kloop_tx_irq_wake_fun ;
 int * sync_kloop_tx_kick_wake_fun ;
 scalar_t__ unlikely (int) ;
 int usleep_range (int,int) ;

int
netmap_sync_kloop(struct netmap_priv_d *priv, struct nmreq_header *hdr)
{
 struct nmreq_sync_kloop_start *req =
  (struct nmreq_sync_kloop_start *)(uintptr_t)hdr->nr_body;
 struct nmreq_opt_sync_kloop_eventfds *eventfds_opt = ((void*)0);



 int num_rx_rings, num_tx_rings, num_rings;
 struct sync_kloop_ring_args *args = ((void*)0);
 uint32_t sleep_us = req->sleep_us;
 struct nm_csb_atok* csb_atok_base;
 struct nm_csb_ktoa* csb_ktoa_base;
 struct netmap_adapter *na;
 struct nmreq_option *opt;
 bool na_could_sleep = 0;
 bool busy_wait = 1;
 bool direct_tx = 0;
 bool direct_rx = 0;
 int err = 0;
 int i;

 if (sleep_us > 1000000) {

  return EINVAL;
 }

 if (priv->np_nifp == ((void*)0)) {
  return ENXIO;
 }
 mb();

 na = priv->np_na;
 if (!nm_netmap_on(na)) {
  return ENXIO;
 }

 NMG_LOCK();

 if (!priv->np_csb_atok_base || !priv->np_csb_ktoa_base) {
  NMG_UNLOCK();
  nm_prerr("sync-kloop on %s requires "
    "NETMAP_REQ_OPT_CSB option", na->name);
  return EINVAL;
 }

 csb_atok_base = priv->np_csb_atok_base;
 csb_ktoa_base = priv->np_csb_ktoa_base;


 if (priv->np_kloop_state & NM_SYNC_KLOOP_RUNNING) {
  err = EBUSY;
 }
 priv->np_kloop_state |= NM_SYNC_KLOOP_RUNNING;
 NMG_UNLOCK();
 if (err) {
  return err;
 }

 num_rx_rings = priv->np_qlast[NR_RX] - priv->np_qfirst[NR_RX];
 num_tx_rings = priv->np_qlast[NR_TX] - priv->np_qfirst[NR_TX];
 num_rings = num_tx_rings + num_rx_rings;

 args = nm_os_malloc(num_rings * sizeof(args[0]));
 if (!args) {
  err = ENOMEM;
  goto out;
 }



 for (i = 0; i < num_tx_rings; i++) {
  struct sync_kloop_ring_args *a = args + i;

  a->kring = NMR(na, NR_TX)[i + priv->np_qfirst[NR_TX]];
  a->csb_atok = csb_atok_base + i;
  a->csb_ktoa = csb_ktoa_base + i;
  a->busy_wait = busy_wait;
  a->direct = direct_tx;
 }
 for (i = 0; i < num_rx_rings; i++) {
  struct sync_kloop_ring_args *a = args + num_tx_rings + i;

  a->kring = NMR(na, NR_RX)[i + priv->np_qfirst[NR_RX]];
  a->csb_atok = csb_atok_base + num_tx_rings + i;
  a->csb_ktoa = csb_ktoa_base + num_tx_rings + i;
  a->busy_wait = busy_wait;
  a->direct = direct_rx;
 }


 opt = nmreq_getoption(hdr, NETMAP_REQ_OPT_SYNC_KLOOP_MODE);
 if (opt != ((void*)0)) {
  struct nmreq_opt_sync_kloop_mode *mode_opt =
      (struct nmreq_opt_sync_kloop_mode *)opt;

  direct_tx = !!(mode_opt->mode & NM_OPT_SYNC_KLOOP_DIRECT_TX);
  direct_rx = !!(mode_opt->mode & NM_OPT_SYNC_KLOOP_DIRECT_RX);
  if (mode_opt->mode & ~(NM_OPT_SYNC_KLOOP_DIRECT_TX |
      NM_OPT_SYNC_KLOOP_DIRECT_RX)) {
   opt->nro_status = err = EINVAL;
   goto out;
  }
  opt->nro_status = 0;
 }
 opt = nmreq_getoption(hdr, NETMAP_REQ_OPT_SYNC_KLOOP_EVENTFDS);
 if (opt != ((void*)0)) {
  if (opt->nro_size != sizeof(*eventfds_opt) +
   sizeof(eventfds_opt->eventfds[0]) * num_rings) {


   opt->nro_status = err = EINVAL;
   goto out;
  }
  opt->nro_status = EOPNOTSUPP;
  goto out;

 }

 nm_prinf("kloop busy_wait %u, direct_tx %u, direct_rx %u, "
     "na_could_sleep %u", busy_wait, direct_tx, direct_rx,
     na_could_sleep);


 for (;;) {
  if (unlikely(NM_ACCESS_ONCE(priv->np_kloop_state) & NM_SYNC_KLOOP_STOPPING)) {
   break;
  }
  for (i = 0; !direct_tx && i < num_tx_rings; i++) {
   struct sync_kloop_ring_args *a = args + i;
   netmap_sync_kloop_tx_ring(a);
  }


  for (i = 0; !direct_rx && i < num_rx_rings; i++) {
   struct sync_kloop_ring_args *a = args + num_tx_rings + i;
   netmap_sync_kloop_rx_ring(a);
  }

  if (busy_wait) {

   usleep_range(sleep_us, sleep_us);
  }







 }
out:
 if (args) {
  nm_os_free(args);
  args = ((void*)0);
 }


 NMG_LOCK();
 priv->np_kloop_state = 0;
 if (na_could_sleep) {
  na->na_flags |= NAF_BDG_MAYSLEEP;
 }
 NMG_UNLOCK();

 return err;
}
