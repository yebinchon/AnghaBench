#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int /*<<< orphan*/  if_drv_flags; int /*<<< orphan*/  if_mtu; } ;
struct mlx4_en_tx_ring {int buf_size; scalar_t__ buf; } ;
struct TYPE_6__ {int /*<<< orphan*/  indir_qp; } ;
struct mlx4_en_priv {int port_up; int rx_ring_num; size_t port; int tx_ring_num; int num_tx_rings_p_up; int flags; TYPE_5__** rx_ring; struct mlx4_en_cq** rx_cq; struct mlx4_en_cq** tx_cq; struct mlx4_en_tx_ring** tx_ring; int /*<<< orphan*/  watchdog_timer; int /*<<< orphan*/  rx_mode_task; int /*<<< orphan*/  broadcast_id; TYPE_1__ rss_map; int /*<<< orphan*/  base_qpn; TYPE_4__* prof; int /*<<< orphan*/  rx_mb_size; int /*<<< orphan*/  counter_index; int /*<<< orphan*/  max_mtu; int /*<<< orphan*/  ethtool_list; int /*<<< orphan*/  curr_uc_list; int /*<<< orphan*/  curr_mc_list; int /*<<< orphan*/  uc_list; int /*<<< orphan*/  mc_list; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int /*<<< orphan*/  workqueue; int /*<<< orphan*/  dev; scalar_t__* mac_removed; } ;
struct TYPE_8__ {int /*<<< orphan*/  cqn; } ;
struct mlx4_en_cq {int size; TYPE_3__ mcq; TYPE_2__* buf; } ;
struct TYPE_10__ {int /*<<< orphan*/  cqn; } ;
struct TYPE_9__ {int /*<<< orphan*/  rx_ppp; int /*<<< orphan*/  rx_pause; int /*<<< orphan*/  tx_ppp; int /*<<< orphan*/  tx_pause; } ;
struct TYPE_7__ {int /*<<< orphan*/  wqe_index; int /*<<< orphan*/  owner_sr_opcode; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  HW ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INIT_OWNER_BIT ; 
 int /*<<< orphan*/  MLX4_CQE_OWNER_MASK ; 
 int MLX4_EN_FLAG_MC_PROMISC ; 
 int MLX4_EN_FLAG_PROMISC ; 
 int /*<<< orphan*/  MLX4_EN_WATCHDOG_TIMEOUT ; 
 int /*<<< orphan*/  MLX4_PROT_ETH ; 
 scalar_t__ STAMP_STRIDE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mlx4_en_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct mlx4_en_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_en_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (size_t*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC8 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct mlx4_en_priv*,struct mlx4_en_cq*,int) ; 
 int FUNC11 (struct mlx4_en_priv*) ; 
 int FUNC12 (struct mlx4_en_priv*,struct mlx4_en_tx_ring*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct mlx4_en_priv*,struct mlx4_en_cq*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int FUNC15 (struct mlx4_en_priv*) ; 
 int /*<<< orphan*/  FUNC16 (struct mlx4_en_cq*) ; 
 int /*<<< orphan*/  FUNC17 (struct mlx4_en_priv*) ; 
 int FUNC18 (struct mlx4_en_priv*) ; 
 int /*<<< orphan*/  FUNC19 (struct mlx4_en_priv*,struct mlx4_en_cq*) ; 
 int /*<<< orphan*/  FUNC20 (struct mlx4_en_priv*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC21 (struct mlx4_en_priv*,struct mlx4_en_tx_ring*) ; 
 int /*<<< orphan*/  FUNC22 (struct mlx4_en_priv*) ; 
 int FUNC23 (struct mlx4_en_priv*) ; 
 int /*<<< orphan*/  FUNC24 (struct mlx4_en_priv*) ; 
 int /*<<< orphan*/  FUNC25 (struct mlx4_en_priv*) ; 
 int FUNC26 (struct mlx4_en_priv*,struct mlx4_en_cq*) ; 
 int /*<<< orphan*/  mlx4_en_watchdog_timeout ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (struct mlx4_en_dev*,char*) ; 
 struct mlx4_en_priv* FUNC30 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC32(struct net_device *dev)
{
	struct mlx4_en_priv *priv = FUNC30(dev);
	struct mlx4_en_dev *mdev = priv->mdev;
	struct mlx4_en_cq *cq;
	struct mlx4_en_tx_ring *tx_ring;
	int rx_index = 0;
	int tx_index = 0;
	int err = 0;
	int i;
	int j;
	u8 mc_list[16] = {0};


	if (priv->port_up) {
		FUNC3(DRV, priv, "start port called while port already up\n");
		return 0;
	}

	FUNC0(&priv->mc_list);
	FUNC0(&priv->uc_list);
	FUNC0(&priv->curr_mc_list);
	FUNC0(&priv->curr_uc_list);
	FUNC0(&priv->ethtool_list);

	/* Calculate Rx buf size */
	dev->if_mtu = FUNC6(dev->if_mtu, priv->max_mtu);
        FUNC14(dev);
	FUNC3(DRV, priv, "Rx buf size:%d\n", priv->rx_mb_size);

	/* Configure rx cq's and rings */
	err = FUNC11(priv);
	if (err) {
		FUNC4(priv, "Failed to activate RX rings\n");
		return err;
	}
	for (i = 0; i < priv->rx_ring_num; i++) {
		cq = priv->rx_cq[i];

		FUNC16(cq);
		err = FUNC10(priv, cq, i);
		if (err) {
			FUNC4(priv, "Failed activating Rx CQ\n");
			goto cq_err;
		}
		for (j = 0; j < cq->size; j++)
			cq->buf[j].owner_sr_opcode = MLX4_CQE_OWNER_MASK;
		err = FUNC26(priv, cq);
		if (err) {
			FUNC4(priv, "Failed setting cq moderation parameters");
			FUNC19(priv, cq);
			goto cq_err;
		}
		FUNC13(priv, cq);
		priv->rx_ring[i]->cqn = cq->mcq.cqn;
		++rx_index;
	}

	/* Set qp number */
	FUNC3(DRV, priv, "Getting qp number for port %d\n", priv->port);
	err = FUNC23(priv);
	if (err) {
		FUNC4(priv, "Failed getting eth qp\n");
		goto cq_err;
	}
	mdev->mac_removed[priv->port] = 0;

	priv->counter_index =
			FUNC27(mdev->dev, priv->port);

	err = FUNC15(priv);
	if (err) {
		FUNC4(priv, "Failed configuring rss steering\n");
		goto mac_err;
	}

	err = FUNC18(priv);
	if (err)
		goto rss_err;

	/* Configure tx cq's and rings */
	for (i = 0; i < priv->tx_ring_num; i++) {
		/* Configure cq */
		cq = priv->tx_cq[i];
		err = FUNC10(priv, cq, i);
		if (err) {
			FUNC4(priv, "Failed activating Tx CQ\n");
			goto tx_err;
		}
		err = FUNC26(priv, cq);
		if (err) {
			FUNC4(priv, "Failed setting cq moderation parameters");
			FUNC19(priv, cq);
			goto tx_err;
		}
		FUNC3(DRV, priv, "Resetting index of collapsed CQ:%d to -1\n", i);
		cq->buf->wqe_index = FUNC2(0xffff);

		/* Configure ring */
		tx_ring = priv->tx_ring[i];

		err = FUNC12(priv, tx_ring, cq->mcq.cqn,
					       i / priv->num_tx_rings_p_up);
		if (err) {
			FUNC4(priv, "Failed activating Tx ring %d\n", i);
			FUNC19(priv, cq);
			goto tx_err;
		}

		/* Arm CQ for TX completions */
		FUNC13(priv, cq);

		/* Set initial ownership of all Tx TXBBs to SW (1) */
		for (j = 0; j < tx_ring->buf_size; j += STAMP_STRIDE)
			*((u32 *) (tx_ring->buf + j)) = INIT_OWNER_BIT;
		++tx_index;
	}

	/* Configure port */
	err = FUNC8(mdev->dev, priv->port,
				    priv->rx_mb_size,
				    priv->prof->tx_pause,
				    priv->prof->tx_ppp,
				    priv->prof->rx_pause,
				    priv->prof->rx_ppp);
	if (err) {
		FUNC4(priv, "Failed setting port general configurations for port %d, with error %d\n",
		       priv->port, err);
		goto tx_err;
	}
	/* Set default qp number */
	err = FUNC9(mdev->dev, priv->port, priv->base_qpn, 0);
	if (err) {
		FUNC4(priv, "Failed setting default qp numbers\n");
		goto tx_err;
	}

	/* Init port */
	FUNC3(HW, priv, "Initializing port\n");
	err = FUNC7(mdev->dev, priv->port);
	if (err) {
		FUNC4(priv, "Failed Initializing port\n");
		goto tx_err;
	}

	/* Attach rx QP to bradcast address */
	FUNC5(&mc_list[10], 0xff, ETH_ALEN);
	mc_list[5] = priv->port; /* needed for B0 steering support */
	if (FUNC28(mdev->dev, &priv->rss_map.indir_qp, mc_list,
				  priv->port, 0, MLX4_PROT_ETH,
				  &priv->broadcast_id))
		FUNC29(mdev, "Failed Attaching Broadcast\n");

	/* Must redo promiscuous mode setup. */
	priv->flags &= ~(MLX4_EN_FLAG_PROMISC | MLX4_EN_FLAG_MC_PROMISC);

	/* Schedule multicast task to populate multicast list */
	FUNC31(mdev->workqueue, &priv->rx_mode_task);

	priv->port_up = true;

        /* Enable the queues. */
        dev->if_drv_flags &= ~IFF_DRV_OACTIVE;
        dev->if_drv_flags |= IFF_DRV_RUNNING;
#ifdef CONFIG_DEBUG_FS
	mlx4_en_create_debug_files(priv);
#endif
        FUNC1(&priv->watchdog_timer, MLX4_EN_WATCHDOG_TIMEOUT,
                    mlx4_en_watchdog_timeout, priv);


	return 0;

tx_err:
	while (tx_index--) {
		FUNC21(priv, priv->tx_ring[tx_index]);
		FUNC19(priv, priv->tx_cq[tx_index]);
	}
	FUNC22(priv);
rss_err:
	FUNC25(priv);
mac_err:
	FUNC24(priv);
cq_err:
	while (rx_index--)
		FUNC19(priv, priv->rx_cq[rx_index]);
	for (i = 0; i < priv->rx_ring_num; i++)
		FUNC20(priv, priv->rx_ring[i]);

	return err; /* need to close devices */
}