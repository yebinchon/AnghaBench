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
typedef  size_t u32 ;
struct mlx4_en_tx_ring {int /*<<< orphan*/  dma_tag; struct mlx4_en_tx_info* tx_info; } ;
struct mlx4_en_tx_info {size_t nr_txbb; int /*<<< orphan*/  dma_map; struct mbuf* mb; } ;
struct mlx4_en_priv {int dummy; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 

__attribute__((used)) static u32
FUNC3(struct mlx4_en_priv *priv,
    struct mlx4_en_tx_ring *ring, u32 index)
{
	struct mlx4_en_tx_info *tx_info;
	struct mbuf *mb;

	tx_info = &ring->tx_info[index];
	mb = tx_info->mb;

	if (mb == NULL)
		goto done;

	FUNC0(ring->dma_tag, tx_info->dma_map,
	    BUS_DMASYNC_POSTWRITE);
	FUNC1(ring->dma_tag, tx_info->dma_map);

        FUNC2(mb);
done:
	return (tx_info->nr_txbb);
}