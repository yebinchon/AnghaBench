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
typedef  int u32 ;
typedef  int u16 ;
struct net_device {int dummy; } ;
struct mlx4_err_cqe {int /*<<< orphan*/  syndrome; int /*<<< orphan*/  vendor_err_syndrome; } ;
struct mlx4_en_tx_ring {int size_mask; int cons; int last_nr_txbb; int size; } ;
struct mlx4_en_priv {int cqe_factor; int /*<<< orphan*/  port_up; struct mlx4_en_tx_ring** tx_ring; } ;
struct mlx4_cq {int cons_index; } ;
struct mlx4_en_cq {size_t ring; int size; struct mlx4_cqe* buf; struct mlx4_cq mcq; } ;
struct mlx4_cqe {int owner_sr_opcode; int /*<<< orphan*/  wqe_index; } ;

/* Variables and functions */
 int MLX4_CQE_OPCODE_ERROR ; 
 int MLX4_CQE_OPCODE_MASK ; 
 int MLX4_CQE_OWNER_MASK ; 
 scalar_t__ FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_en_priv*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_cq*) ; 
 int FUNC4 (struct mlx4_en_priv*,struct mlx4_en_tx_ring*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_en_priv*,struct mlx4_en_tx_ring*,int,int) ; 
 struct mlx4_en_priv* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int FUNC10(struct net_device *dev,
				 struct mlx4_en_cq *cq)
{
	struct mlx4_en_priv *priv = FUNC6(dev);
	struct mlx4_cq *mcq = &cq->mcq;
	struct mlx4_en_tx_ring *ring = priv->tx_ring[cq->ring];
	struct mlx4_cqe *cqe;
	u16 index;
	u16 new_index, ring_index, stamp_index;
	u32 txbbs_skipped = 0;
	u32 txbbs_stamp = 0;
	u32 cons_index = mcq->cons_index;
	int size = cq->size;
	u32 size_mask = ring->size_mask;
	struct mlx4_cqe *buf = cq->buf;
	int factor = priv->cqe_factor;

	if (!priv->port_up)
		return 0;

	index = cons_index & size_mask;
	cqe = &buf[(index << factor) + factor];
	ring_index = ring->cons & size_mask;
	stamp_index = ring_index;

	/* Process all completed CQEs */
	while (FUNC0(cqe->owner_sr_opcode & MLX4_CQE_OWNER_MASK,
			cons_index & size)) {
		/*
		 * make sure we read the CQE after we read the
		 * ownership bit
		 */
		FUNC7();

		if (FUNC8((cqe->owner_sr_opcode & MLX4_CQE_OPCODE_MASK) ==
			     MLX4_CQE_OPCODE_ERROR)) {
			FUNC2(priv, "CQE completed in error - vendor syndrom: 0x%x syndrom: 0x%x\n",
			       ((struct mlx4_err_cqe *)cqe)->
				       vendor_err_syndrome,
			       ((struct mlx4_err_cqe *)cqe)->syndrome);
		}

		/* Skip over last polled CQE */
		new_index = FUNC1(cqe->wqe_index) & size_mask;

		do {
			txbbs_skipped += ring->last_nr_txbb;
			ring_index = (ring_index + ring->last_nr_txbb) & size_mask;
			/* free next descriptor */
			ring->last_nr_txbb = FUNC4(
			    priv, ring, ring_index);
			FUNC5(priv, ring, stamp_index,
					  !!((ring->cons + txbbs_stamp) &
						ring->size));
			stamp_index = ring_index;
			txbbs_stamp = txbbs_skipped;
		} while (ring_index != new_index);

		++cons_index;
		index = cons_index & size_mask;
		cqe = &buf[(index << factor) + factor];
	}


	/*
	 * To prevent CQ overflow we first update CQ consumer and only then
	 * the ring consumer.
	 */
	mcq->cons_index = cons_index;
	FUNC3(mcq);
	FUNC9();
	ring->cons += txbbs_skipped;

	return (0);
}