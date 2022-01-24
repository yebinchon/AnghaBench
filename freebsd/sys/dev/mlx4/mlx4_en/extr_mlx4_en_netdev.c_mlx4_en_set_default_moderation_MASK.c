#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mlx4_en_priv {int rx_ring_num; int tx_ring_num; int adaptive_rx_coal; scalar_t__ last_moder_tx_packets; scalar_t__ last_moder_jiffies; int /*<<< orphan*/  sample_interval; int /*<<< orphan*/  rx_usecs_high; int /*<<< orphan*/  pkt_rate_high; int /*<<< orphan*/  rx_usecs_low; int /*<<< orphan*/  pkt_rate_low; int /*<<< orphan*/  tx_usecs; int /*<<< orphan*/  tx_frames; struct mlx4_en_cq** tx_cq; scalar_t__* last_moder_bytes; scalar_t__* last_moder_packets; int /*<<< orphan*/ * last_moder_time; int /*<<< orphan*/  rx_usecs; int /*<<< orphan*/  rx_frames; struct mlx4_en_cq** rx_cq; TYPE_1__* dev; } ;
struct mlx4_en_cq {int /*<<< orphan*/  moder_time; int /*<<< orphan*/  moder_cnt; } ;
struct TYPE_2__ {scalar_t__ if_mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTR ; 
 int /*<<< orphan*/  MLX4_EN_AUTO_CONF ; 
 int /*<<< orphan*/  MLX4_EN_RX_COAL_TARGET ; 
 int /*<<< orphan*/  MLX4_EN_RX_COAL_TIME ; 
 int /*<<< orphan*/  MLX4_EN_RX_COAL_TIME_HIGH ; 
 int /*<<< orphan*/  MLX4_EN_RX_COAL_TIME_LOW ; 
 int /*<<< orphan*/  MLX4_EN_RX_RATE_HIGH ; 
 int /*<<< orphan*/  MLX4_EN_RX_RATE_LOW ; 
 int /*<<< orphan*/  MLX4_EN_SAMPLE_INTERVAL ; 
 int /*<<< orphan*/  MLX4_EN_TX_COAL_PKTS ; 
 int /*<<< orphan*/  MLX4_EN_TX_COAL_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mlx4_en_priv*,char*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct mlx4_en_priv *priv)
{
	struct mlx4_en_cq *cq;
	int i;

	/* If we haven't received a specific coalescing setting
	 * (module param), we set the moderation parameters as follows:
	 * - moder_cnt is set to the number of mtu sized packets to
	 *   satisfy our coalescing target.
	 * - moder_time is set to a fixed value.
	 */
	priv->rx_frames = MLX4_EN_RX_COAL_TARGET;
	priv->rx_usecs = MLX4_EN_RX_COAL_TIME;
	priv->tx_frames = MLX4_EN_TX_COAL_PKTS;
	priv->tx_usecs = MLX4_EN_TX_COAL_TIME;
	FUNC0(INTR, priv, "Default coalesing params for mtu: %u - "
	       "rx_frames:%d rx_usecs:%d\n",
	       (unsigned)priv->dev->if_mtu, priv->rx_frames, priv->rx_usecs);

	/* Setup cq moderation params */
	for (i = 0; i < priv->rx_ring_num; i++) {
		cq = priv->rx_cq[i];
		cq->moder_cnt = priv->rx_frames;
		cq->moder_time = priv->rx_usecs;
		priv->last_moder_time[i] = MLX4_EN_AUTO_CONF;
		priv->last_moder_packets[i] = 0;
		priv->last_moder_bytes[i] = 0;
	}

	for (i = 0; i < priv->tx_ring_num; i++) {
		cq = priv->tx_cq[i];
		cq->moder_cnt = priv->tx_frames;
		cq->moder_time = priv->tx_usecs;
	}

	/* Reset auto-moderation params */
	priv->pkt_rate_low = MLX4_EN_RX_RATE_LOW;
	priv->rx_usecs_low = MLX4_EN_RX_COAL_TIME_LOW;
	priv->pkt_rate_high = MLX4_EN_RX_RATE_HIGH;
	priv->rx_usecs_high = MLX4_EN_RX_COAL_TIME_HIGH;
	priv->sample_interval = MLX4_EN_SAMPLE_INTERVAL;
	priv->adaptive_rx_coal = 1;
	priv->last_moder_jiffies = 0;
	priv->last_moder_tx_packets = 0;
}