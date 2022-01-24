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
typedef  int u8 ;
typedef  int u32 ;
struct mlx5_mkey_seg {int flags; void* bsfs_octo_size; void* xlt_oct_size; int /*<<< orphan*/  len; void* flags_pd; void* qpn_mkey7_0; } ;
struct ib_sig_handover_wr {int /*<<< orphan*/  access_flags; struct ib_mr* sig_mr; } ;
struct ib_mr {int rkey; } ;
struct TYPE_4__ {TYPE_1__* sig; } ;
struct TYPE_3__ {int sigerr_count; } ;

/* Variables and functions */
 int MLX5_ACCESS_MODE_KLM ; 
 int MLX5_MKEY_BSF_EN ; 
 int MLX5_MKEY_BSF_OCTO_SIZE ; 
 int MLX5_MKEY_REMOTE_INVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_mkey_seg*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC6 (struct ib_mr*) ; 

__attribute__((used)) static void FUNC7(struct mlx5_mkey_seg *seg,
				 struct ib_sig_handover_wr *wr, u32 nelements,
				 u32 length, u32 pdn)
{
	struct ib_mr *sig_mr = wr->sig_mr;
	u32 sig_key = sig_mr->rkey;
	u8 sigerr = FUNC6(sig_mr)->sig->sigerr_count & 1;

	FUNC5(seg, 0, sizeof(*seg));

	seg->flags = FUNC4(wr->access_flags) |
				   MLX5_ACCESS_MODE_KLM;
	seg->qpn_mkey7_0 = FUNC1((sig_key & 0xff) | 0xffffff00);
	seg->flags_pd = FUNC1(MLX5_MKEY_REMOTE_INVAL | sigerr << 26 |
				    MLX5_MKEY_BSF_EN | pdn);
	seg->len = FUNC2(length);
	seg->xlt_oct_size = FUNC1(FUNC0(FUNC3(nelements)));
	seg->bsfs_octo_size = FUNC1(MLX5_MKEY_BSF_OCTO_SIZE);
}