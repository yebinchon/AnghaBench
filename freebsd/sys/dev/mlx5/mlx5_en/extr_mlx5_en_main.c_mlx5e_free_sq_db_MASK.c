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
struct mlx5e_sq {TYPE_1__* mbuf; int /*<<< orphan*/  dma_tag; int /*<<< orphan*/  wq; } ;
struct TYPE_2__ {int /*<<< orphan*/  dma_map; int /*<<< orphan*/ * mbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_MLX5EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct mlx5e_sq *sq)
{
	int wq_sz = FUNC4(&sq->wq);
	int x;

	for (x = 0; x != wq_sz; x++) {
		if (sq->mbuf[x].mbuf != NULL) {
			FUNC1(sq->dma_tag, sq->mbuf[x].dma_map);
			FUNC3(sq->mbuf[x].mbuf);
		}
		FUNC0(sq->dma_tag, sq->mbuf[x].dma_map);
	}
	FUNC2(sq->mbuf, M_MLX5EN);
}