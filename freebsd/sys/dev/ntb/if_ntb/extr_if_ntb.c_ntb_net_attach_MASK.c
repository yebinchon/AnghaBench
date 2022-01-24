#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ntb_queue_handlers {int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct ntb_net_queue {int /*<<< orphan*/ * qp; int /*<<< orphan*/  queue_full; int /*<<< orphan*/  tx_tq; int /*<<< orphan*/  tx_task; int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  br; int /*<<< orphan*/ * ifp; struct ntb_net_ctx* sc; } ;
struct ntb_net_ctx {int num_queues; struct ntb_net_queue* queues; int /*<<< orphan*/  media; scalar_t__ mtu; int /*<<< orphan*/  eaddr; int /*<<< orphan*/ * ifp; } ;
typedef  int /*<<< orphan*/ * if_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ ETHER_HDR_LEN ; 
 int IFCAP_HWCSUM ; 
 int IFCAP_HWCSUM_IPV6 ; 
 int IFCAP_JUMBO_MTU ; 
 int IFCAP_LINKSTATE ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int /*<<< orphan*/  IFM_IMASK ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 scalar_t__ INT_MAX ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  NTB_MEDIATYPE ; 
 int /*<<< orphan*/  PI_NET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ntb_net_queue*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct ntb_net_ctx* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_if_ntb_num_queues ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,struct ntb_net_ctx*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct ntb_net_queue* FUNC26 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ntb_handle_tx ; 
 int /*<<< orphan*/  ntb_ifmedia_sts ; 
 int /*<<< orphan*/  ntb_ifmedia_upd ; 
 int /*<<< orphan*/  ntb_ioctl ; 
 int /*<<< orphan*/  ntb_net_event_handler ; 
 int /*<<< orphan*/  ntb_net_init ; 
 int /*<<< orphan*/  ntb_net_rx_handler ; 
 int /*<<< orphan*/  ntb_net_tx_handler ; 
 int /*<<< orphan*/  ntb_qflush ; 
 int /*<<< orphan*/  ntb_transmit ; 
 int /*<<< orphan*/ * FUNC29 (int /*<<< orphan*/ ,int,struct ntb_queue_handlers*,struct ntb_net_queue*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (char*) ; 
 int /*<<< orphan*/  FUNC34 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 

__attribute__((used)) static int
FUNC36(device_t dev)
{
	struct ntb_net_ctx *sc = FUNC6(dev);
	struct ntb_net_queue *q;
	if_t ifp;
	struct ntb_queue_handlers handlers = { ntb_net_rx_handler,
	    ntb_net_tx_handler, ntb_net_event_handler };
	int i;

	ifp = sc->ifp = FUNC10(IFT_ETHER);
	if (ifp == NULL) {
		FUNC33("ntb: Cannot allocate ifnet structure\n");
		return (ENOMEM);
	}
	FUNC11(ifp, FUNC4(dev), FUNC7(dev));
	FUNC14(ifp, dev);

	sc->num_queues = FUNC27(g_if_ntb_num_queues,
	    FUNC32(dev));
	sc->queues = FUNC26(sc->num_queues * sizeof(struct ntb_net_queue),
	    M_DEVBUF, M_WAITOK | M_ZERO);
	sc->mtu = INT_MAX;
	for (i = 0; i < sc->num_queues; i++) {
		q = &sc->queues[i];
		q->sc = sc;
		q->ifp = ifp;
		q->qp = FUNC29(dev, i, &handlers, q);
		if (q->qp == NULL)
			break;
		sc->mtu = FUNC25(sc->mtu, FUNC31(q->qp));
		FUNC28(&q->tx_lock, "ntb tx", NULL, MTX_DEF);
		q->br = FUNC1(4096, M_DEVBUF, M_WAITOK, &q->tx_lock);
		FUNC0(&q->tx_task, 0, ntb_handle_tx, q);
		q->tx_tq = FUNC34("ntb_txq", M_NOWAIT,
		    taskqueue_thread_enqueue, &q->tx_tq);
		FUNC35(&q->tx_tq, 1, PI_NET, "%s txq%d",
		    FUNC5(dev), i);
		FUNC2(&q->queue_full, 1);
	}
	sc->num_queues = i;
	FUNC8(dev, "%d queue(s)\n", sc->num_queues);

	FUNC16(ifp, ntb_net_init);
	FUNC20(ifp, sc);
	FUNC15(ifp, IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST);
	FUNC17(ifp, ntb_ioctl);
	FUNC21(ifp, ntb_transmit);
	FUNC19(ifp, ntb_qflush);
	FUNC3(sc->eaddr);
	FUNC9(ifp, sc->eaddr);
	FUNC12(ifp, IFCAP_HWCSUM | IFCAP_HWCSUM_IPV6 |
	    IFCAP_JUMBO_MTU | IFCAP_LINKSTATE);
	FUNC13(ifp, IFCAP_JUMBO_MTU | IFCAP_LINKSTATE);
	FUNC18(ifp, sc->mtu - ETHER_HDR_LEN);

	FUNC23(&sc->media, IFM_IMASK, ntb_ifmedia_upd,
	    ntb_ifmedia_sts);
	FUNC22(&sc->media, NTB_MEDIATYPE, 0, NULL);
	FUNC24(&sc->media, NTB_MEDIATYPE);

	for (i = 0; i < sc->num_queues; i++)
		FUNC30(sc->queues[i].qp);
	return (0);
}