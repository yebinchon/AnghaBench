
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_offset_t ;
struct proc {int p_pid; } ;
struct evtchn_alloc_unbound {scalar_t__ port; void* remote_dom; void* dom; } ;
typedef int device_t ;
struct TYPE_5__ {int * ich_arg; int ich_func; } ;
struct TYPE_4__ {int initialized; scalar_t__ evtchn; int xs_late_init; TYPE_3__ xs_attachcb; int xenwatch_pid; int watch_events_lock; int registered_watches_lock; int request_mutex; int xenwatch_mutex; int reply_lock; int ring_lock; int watch_events; int reply_list; int gpfn; int xs_dev; } ;


 void* DOMID_SELF ;
 int EVTCHNOP_alloc_unbound ;
 int HYPERVISOR_event_channel_op (int ,struct evtchn_alloc_unbound*) ;
 int MTX_DEF ;
 int M_WAITOK ;
 int M_XENSTORE ;
 int M_ZERO ;
 int PAGE_SIZE ;
 int PAT_WRITE_BACK ;
 int RFHIGHPID ;
 int TAILQ_INIT (int *) ;
 int TASK_INIT (int *,int ,int ,int *) ;
 int atop (int ) ;
 int config_intrhook_establish (TYPE_3__*) ;
 int device_set_softc (int ,TYPE_1__*) ;
 int kproc_create (int ,int *,struct proc**,int ,int ,char*) ;
 scalar_t__ malloc (int ,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int panic (char*,int) ;
 int pmap_kextract (int ) ;
 scalar_t__ pmap_mapdev_attr (int ,int ,int ) ;
 int ptoa (int ) ;
 int sx_init (int *,char*) ;
 scalar_t__ xen_get_xenstore_evtchn () ;
 int xen_get_xenstore_mfn () ;
 scalar_t__ xen_store ;
 int xenwatch_thread ;
 TYPE_1__ xs ;
 int xs_attach_deferred ;
 int xs_attach_late ;
 int xs_init_comms () ;
 int xs_rcv_thread ;

__attribute__((used)) static int
xs_attach(device_t dev)
{
 int error;


 xs.xs_dev = dev;
 device_set_softc(dev, &xs);


 struct proc *p;

 xs.initialized = 0;
 xs.evtchn = xen_get_xenstore_evtchn();
 if (xs.evtchn == 0) {
  struct evtchn_alloc_unbound alloc_unbound;


  alloc_unbound.dom = DOMID_SELF;
  alloc_unbound.remote_dom = DOMID_SELF;
  error = HYPERVISOR_event_channel_op(
      EVTCHNOP_alloc_unbound, &alloc_unbound);
  if (error != 0)
   panic(
      "unable to alloc event channel for Dom0: %d",
       error);

  xs.evtchn = alloc_unbound.port;


  xen_store = malloc(PAGE_SIZE, M_XENSTORE, M_WAITOK | M_ZERO);
  xs.gpfn = atop(pmap_kextract((vm_offset_t)xen_store));
 } else {
  xs.gpfn = xen_get_xenstore_mfn();
  xen_store = pmap_mapdev_attr(ptoa(xs.gpfn), PAGE_SIZE,
      PAT_WRITE_BACK);
  xs.initialized = 1;
 }

 TAILQ_INIT(&xs.reply_list);
 TAILQ_INIT(&xs.watch_events);

 mtx_init(&xs.ring_lock, "ring lock", ((void*)0), MTX_DEF);
 mtx_init(&xs.reply_lock, "reply lock", ((void*)0), MTX_DEF);
 sx_init(&xs.xenwatch_mutex, "xenwatch");
 sx_init(&xs.request_mutex, "xenstore request");
 mtx_init(&xs.registered_watches_lock, "watches", ((void*)0), MTX_DEF);
 mtx_init(&xs.watch_events_lock, "watch events", ((void*)0), MTX_DEF);


 error = xs_init_comms();
 if (error)
  return (error);

 error = kproc_create(xenwatch_thread, ((void*)0), &p, RFHIGHPID,
     0, "xenwatch");
 if (error)
  return (error);
 xs.xenwatch_pid = p->p_pid;

 error = kproc_create(xs_rcv_thread, ((void*)0), ((void*)0),
     RFHIGHPID, 0, "xenstore_rcv");

 xs.xs_attachcb.ich_func = xs_attach_deferred;
 xs.xs_attachcb.ich_arg = ((void*)0);
 if (xs.initialized) {
  config_intrhook_establish(&xs.xs_attachcb);
 } else {
  TASK_INIT(&xs.xs_late_init, 0, xs_attach_late, ((void*)0));
 }

 return (error);
}
