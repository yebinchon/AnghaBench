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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct mlx5_ib_ubuffer {int /*<<< orphan*/ * umem; int /*<<< orphan*/  buf_size; int /*<<< orphan*/  buf_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  mqp; } ;
struct mlx5_ib_sq {int tisn; struct mlx5_ib_ubuffer ubuffer; TYPE_1__ base; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;
struct ib_pd {int dummy; } ;
typedef  void __be64 ;

/* Variables and functions */
 int ENOMEM ; 
 int MLX5_ADAPTER_PAGE_SHIFT ; 
 void* FUNC0 (void*,void*,void*) ; 
 int FUNC1 (void*,void*,struct ib_pd*) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_SEND_WQE_BB ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,struct ib_pd*,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MLX5_SQC_STATE_RST ; 
 int FUNC5 (void*) ; 
 int MLX5_WQ_TYPE_CYCLIC ; 
 struct ib_pd* cqn ; 
 struct ib_pd* cqn_snd ; 
 void* create_qp_in ; 
 void* create_sq_in ; 
 void* ctx ; 
 int /*<<< orphan*/  dbr_addr ; 
 struct ib_pd* flush_in_error_en ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 struct ib_pd* log_sq_size ; 
 struct ib_pd* log_wq_pg_sz ; 
 struct ib_pd* log_wq_stride ; 
 struct ib_pd* log_wq_sz ; 
 int FUNC9 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx5_ib_dev*,int /*<<< orphan*/ *,int,void*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct mlx5_ib_dev*,struct ib_pd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*,int*,int*,int*) ; 
 void* FUNC12 (int) ; 
 struct ib_pd* page_offset ; 
 void* qpc ; 
 struct ib_pd* state ; 
 struct ib_pd* tis_lst_sz ; 
 struct ib_pd* tis_num_0 ; 
 struct ib_pd* uar_page ; 
 struct ib_pd* user_index ; 
 struct ib_pd* wq_type ; 

__attribute__((used)) static int FUNC13(struct mlx5_ib_dev *dev,
				   struct mlx5_ib_sq *sq, void *qpin,
				   struct ib_pd *pd)
{
	struct mlx5_ib_ubuffer *ubuffer = &sq->ubuffer;
	__be64 *pas;
	void *in;
	void *sqc;
	void *qpc = FUNC0(create_qp_in, qpin, qpc);
	void *wq;
	int inlen;
	int err;
	int page_shift = 0;
	int npages;
	int ncont = 0;
	u32 offset = 0;

	err = FUNC11(dev, pd, ubuffer->buf_addr, ubuffer->buf_size,
			       &sq->ubuffer.umem, &npages, &page_shift,
			       &ncont, &offset);
	if (err)
		return err;

	inlen = FUNC5(create_sq_in) + sizeof(u64) * ncont;
	in = FUNC12(inlen);
	if (!in) {
		err = -ENOMEM;
		goto err_umem;
	}

	sqc = FUNC0(create_sq_in, in, ctx);
	FUNC3(sqc, sqc, flush_in_error_en, 1);
	FUNC3(sqc, sqc, state, MLX5_SQC_STATE_RST);
	FUNC3(sqc, sqc, user_index, FUNC1(qpc, qpc, user_index));
	FUNC3(sqc, sqc, cqn, FUNC1(qpc, qpc, cqn_snd));
	FUNC3(sqc, sqc, tis_lst_sz, 1);
	FUNC3(sqc, sqc, tis_num_0, sq->tisn);

	wq = FUNC0(sqc, sqc, wq);
	FUNC3(wq, wq, wq_type, MLX5_WQ_TYPE_CYCLIC);
	FUNC3(wq, wq, pd, FUNC1(qpc, qpc, pd));
	FUNC3(wq, wq, uar_page, FUNC1(qpc, qpc, uar_page));
	FUNC4(wq, wq, dbr_addr, FUNC2(qpc, qpc, dbr_addr));
	FUNC3(wq, wq, log_wq_stride, FUNC7(MLX5_SEND_WQE_BB));
	FUNC3(wq, wq, log_wq_sz, FUNC1(qpc, qpc, log_sq_size));
	FUNC3(wq, wq, log_wq_pg_sz,  page_shift - MLX5_ADAPTER_PAGE_SHIFT);
	FUNC3(wq, wq, page_offset, offset);

	pas = (__be64 *)FUNC0(wq, wq, pas);
	FUNC10(dev, sq->ubuffer.umem, page_shift, pas, 0);

	err = FUNC9(dev->mdev, in, inlen, &sq->base.mqp);

	FUNC8(in);

	if (err)
		goto err_umem;

	return 0;

err_umem:
	FUNC6(sq->ubuffer.umem);
	sq->ubuffer.umem = NULL;

	return err;
}