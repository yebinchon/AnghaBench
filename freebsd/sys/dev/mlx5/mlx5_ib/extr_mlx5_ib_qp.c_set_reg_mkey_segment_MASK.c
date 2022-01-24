#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  virt_addr; } ;
struct mlx5_umr_wr {int /*<<< orphan*/  mkey; int /*<<< orphan*/  page_shift; int /*<<< orphan*/  length; TYPE_1__ target; scalar_t__ pd; int /*<<< orphan*/  access_flags; } ;
struct mlx5_mkey_seg {void* qpn_mkey7_0; int /*<<< orphan*/  log2_page_size; void* len; void* start_addr; void* flags_pd; int /*<<< orphan*/  flags; int /*<<< orphan*/  status; } ;
struct ib_send_wr {int send_flags; } ;
struct TYPE_4__ {int pdn; } ;

/* Variables and functions */
 int MLX5_IB_SEND_UMR_UNREG ; 
 int MLX5_IB_SEND_UMR_UPDATE_MTT ; 
 int /*<<< orphan*/  MLX5_MKEY_STATUS_FREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_mkey_seg*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (scalar_t__) ; 
 struct mlx5_umr_wr* FUNC6 (struct ib_send_wr*) ; 

__attribute__((used)) static void FUNC7(struct mlx5_mkey_seg *seg, struct ib_send_wr *wr)
{
	struct mlx5_umr_wr *umrwr = FUNC6(wr);

	FUNC3(seg, 0, sizeof(*seg));
	if (wr->send_flags & MLX5_IB_SEND_UMR_UNREG) {
		seg->status = MLX5_MKEY_STATUS_FREE;
		return;
	}

	seg->flags = FUNC0(umrwr->access_flags);
	if (!(wr->send_flags & MLX5_IB_SEND_UMR_UPDATE_MTT)) {
		if (umrwr->pd)
			seg->flags_pd = FUNC1(FUNC5(umrwr->pd)->pdn);
		seg->start_addr = FUNC2(umrwr->target.virt_addr);
	}
	seg->len = FUNC2(umrwr->length);
	seg->log2_page_size = umrwr->page_shift;
	seg->qpn_mkey7_0 = FUNC1(0xffffff00 |
				       FUNC4(umrwr->mkey));
}