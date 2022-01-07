
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_queue_handlers {int member_2; int member_1; int member_0; } ;
struct ntb_net_queue {int * qp; int queue_full; int tx_tq; int tx_task; int tx_lock; int br; int * ifp; struct ntb_net_ctx* sc; } ;
struct ntb_net_ctx {int num_queues; struct ntb_net_queue* queues; int media; scalar_t__ mtu; int eaddr; int * ifp; } ;
typedef int * if_t ;
typedef int device_t ;


 int ENOMEM ;
 scalar_t__ ETHER_HDR_LEN ;
 int IFCAP_HWCSUM ;
 int IFCAP_HWCSUM_IPV6 ;
 int IFCAP_JUMBO_MTU ;
 int IFCAP_LINKSTATE ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFM_IMASK ;
 int IFT_ETHER ;
 scalar_t__ INT_MAX ;
 int MTX_DEF ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_WAITOK ;
 int M_ZERO ;
 int NTB_MEDIATYPE ;
 int PI_NET ;
 int TASK_INIT (int *,int ,int ,struct ntb_net_queue*) ;
 int buf_ring_alloc (int,int ,int,int *) ;
 int callout_init (int *,int) ;
 int create_random_local_eui48 (int ) ;
 int device_get_name (int ) ;
 int device_get_nameunit (int ) ;
 struct ntb_net_ctx* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,int) ;
 int ether_ifattach (int *,int ) ;
 int g_if_ntb_num_queues ;
 int * if_gethandle (int ) ;
 int if_initname (int *,int ,int ) ;
 int if_setcapabilities (int *,int) ;
 int if_setcapenable (int *,int) ;
 int if_setdev (int *,int ) ;
 int if_setflags (int *,int) ;
 int if_setinitfn (int *,int ) ;
 int if_setioctlfn (int *,int ) ;
 int if_setmtu (int *,scalar_t__) ;
 int if_setqflushfn (int *,int ) ;
 int if_setsoftc (int *,struct ntb_net_ctx*) ;
 int if_settransmitfn (int *,int ) ;
 int ifmedia_add (int *,int ,int ,int *) ;
 int ifmedia_init (int *,int ,int ,int ) ;
 int ifmedia_set (int *,int ) ;
 scalar_t__ imin (scalar_t__,int ) ;
 struct ntb_net_queue* malloc (int,int ,int) ;
 int min (int ,int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int ntb_handle_tx ;
 int ntb_ifmedia_sts ;
 int ntb_ifmedia_upd ;
 int ntb_ioctl ;
 int ntb_net_event_handler ;
 int ntb_net_init ;
 int ntb_net_rx_handler ;
 int ntb_net_tx_handler ;
 int ntb_qflush ;
 int ntb_transmit ;
 int * ntb_transport_create_queue (int ,int,struct ntb_queue_handlers*,struct ntb_net_queue*) ;
 int ntb_transport_link_up (int *) ;
 int ntb_transport_max_size (int *) ;
 int ntb_transport_queue_count (int ) ;
 int printf (char*) ;
 int taskqueue_create_fast (char*,int ,int ,int *) ;
 int taskqueue_start_threads (int *,int,int ,char*,int ,int) ;
 int taskqueue_thread_enqueue ;

__attribute__((used)) static int
ntb_net_attach(device_t dev)
{
 struct ntb_net_ctx *sc = device_get_softc(dev);
 struct ntb_net_queue *q;
 if_t ifp;
 struct ntb_queue_handlers handlers = { ntb_net_rx_handler,
     ntb_net_tx_handler, ntb_net_event_handler };
 int i;

 ifp = sc->ifp = if_gethandle(IFT_ETHER);
 if (ifp == ((void*)0)) {
  printf("ntb: Cannot allocate ifnet structure\n");
  return (ENOMEM);
 }
 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 if_setdev(ifp, dev);

 sc->num_queues = min(g_if_ntb_num_queues,
     ntb_transport_queue_count(dev));
 sc->queues = malloc(sc->num_queues * sizeof(struct ntb_net_queue),
     M_DEVBUF, M_WAITOK | M_ZERO);
 sc->mtu = INT_MAX;
 for (i = 0; i < sc->num_queues; i++) {
  q = &sc->queues[i];
  q->sc = sc;
  q->ifp = ifp;
  q->qp = ntb_transport_create_queue(dev, i, &handlers, q);
  if (q->qp == ((void*)0))
   break;
  sc->mtu = imin(sc->mtu, ntb_transport_max_size(q->qp));
  mtx_init(&q->tx_lock, "ntb tx", ((void*)0), MTX_DEF);
  q->br = buf_ring_alloc(4096, M_DEVBUF, M_WAITOK, &q->tx_lock);
  TASK_INIT(&q->tx_task, 0, ntb_handle_tx, q);
  q->tx_tq = taskqueue_create_fast("ntb_txq", M_NOWAIT,
      taskqueue_thread_enqueue, &q->tx_tq);
  taskqueue_start_threads(&q->tx_tq, 1, PI_NET, "%s txq%d",
      device_get_nameunit(dev), i);
  callout_init(&q->queue_full, 1);
 }
 sc->num_queues = i;
 device_printf(dev, "%d queue(s)\n", sc->num_queues);

 if_setinitfn(ifp, ntb_net_init);
 if_setsoftc(ifp, sc);
 if_setflags(ifp, IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST);
 if_setioctlfn(ifp, ntb_ioctl);
 if_settransmitfn(ifp, ntb_transmit);
 if_setqflushfn(ifp, ntb_qflush);
 create_random_local_eui48(sc->eaddr);
 ether_ifattach(ifp, sc->eaddr);
 if_setcapabilities(ifp, IFCAP_HWCSUM | IFCAP_HWCSUM_IPV6 |
     IFCAP_JUMBO_MTU | IFCAP_LINKSTATE);
 if_setcapenable(ifp, IFCAP_JUMBO_MTU | IFCAP_LINKSTATE);
 if_setmtu(ifp, sc->mtu - ETHER_HDR_LEN);

 ifmedia_init(&sc->media, IFM_IMASK, ntb_ifmedia_upd,
     ntb_ifmedia_sts);
 ifmedia_add(&sc->media, NTB_MEDIATYPE, 0, ((void*)0));
 ifmedia_set(&sc->media, NTB_MEDIATYPE);

 for (i = 0; i < sc->num_queues; i++)
  ntb_transport_link_up(sc->queues[i].qp);
 return (0);
}
