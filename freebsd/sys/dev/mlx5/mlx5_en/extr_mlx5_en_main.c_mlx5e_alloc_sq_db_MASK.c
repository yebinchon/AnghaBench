#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mlx5e_sq {TYPE_1__* mbuf; int /*<<< orphan*/  dma_tag; int /*<<< orphan*/  wq; } ;
struct TYPE_3__ {int /*<<< orphan*/  dma_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_MLX5EN ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(struct mlx5e_sq *sq)
{
	int wq_sz = FUNC4(&sq->wq);
	int err;
	int x;

	sq->mbuf = FUNC3(wq_sz * sizeof(sq->mbuf[0]), M_MLX5EN, M_WAITOK | M_ZERO);

	/* Create DMA descriptor MAPs */
	for (x = 0; x != wq_sz; x++) {
		err = -FUNC0(sq->dma_tag, 0, &sq->mbuf[x].dma_map);
		if (err != 0) {
			while (x--)
				FUNC1(sq->dma_tag, sq->mbuf[x].dma_map);
			FUNC2(sq->mbuf, M_MLX5EN);
			return (err);
		}
	}
	return (0);
}