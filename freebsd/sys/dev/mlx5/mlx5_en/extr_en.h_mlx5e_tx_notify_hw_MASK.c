#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_4__ {scalar_t__ map; scalar_t__ bf_map; } ;
struct TYPE_6__ {int /*<<< orphan*/ * db; } ;
struct mlx5e_sq {int /*<<< orphan*/  bf_buf_size; int /*<<< orphan*/  bf_offset; TYPE_2__* priv; TYPE_1__ uar; int /*<<< orphan*/  pc; TYPE_3__ wq; } ;
struct TYPE_5__ {int /*<<< orphan*/  doorbell_lock; } ;

/* Variables and functions */
 scalar_t__ MLX5_BF_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static inline void
FUNC5(struct mlx5e_sq *sq, u32 *wqe, int bf_sz)
{
	u16 ofst = MLX5_BF_OFFSET + sq->bf_offset;

	/* ensure wqe is visible to device before updating doorbell record */
	FUNC4();

	*sq->wq.db = FUNC2(sq->pc);

	/*
	 * Ensure the doorbell record is visible to device before ringing
	 * the doorbell:
	 */
	FUNC4();

	if (bf_sz) {
		FUNC1(sq->uar.bf_map + ofst, wqe, bf_sz);

		/* flush the write-combining mapped buffer */
		FUNC4();

	} else {
		FUNC3(wqe, sq->uar.map + ofst,
		    FUNC0(&sq->priv->doorbell_lock));
	}

	sq->bf_offset ^= sq->bf_buf_size;
}