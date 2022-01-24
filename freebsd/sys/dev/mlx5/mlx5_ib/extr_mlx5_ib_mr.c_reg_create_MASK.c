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
typedef  int /*<<< orphan*/  u64 ;
typedef  void u32 ;
struct TYPE_4__ {int /*<<< orphan*/  key; } ;
struct mlx5_ib_mr {int live; TYPE_2__ mmkey; struct mlx5_ib_dev* dev; struct ib_umem* umem; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;
struct ib_umem {int dummy; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
struct ib_mr {int dummy; } ;
typedef  int /*<<< orphan*/  __be64 ;
struct TYPE_3__ {int pdn; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct mlx5_ib_mr* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IB_ACCESS_LOCAL_WRITE ; 
 int IB_ACCESS_REMOTE_ATOMIC ; 
 int IB_ACCESS_REMOTE_READ ; 
 int IB_ACCESS_REMOTE_WRITE ; 
 int MLX5_ACCESS_MODE_MTT ; 
 void* FUNC1 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_IB_MTT_PRESENT ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,struct ib_pd*,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (void*) ; 
 struct ib_pd* a ; 
 struct ib_pd* access_mode ; 
 struct ib_pd* bsf_octword_size ; 
 void* create_mkey_in ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_ib_mr*) ; 
 int /*<<< orphan*/  klm_pas_mtt ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 struct mlx5_ib_mr* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  len ; 
 struct ib_pd* log_page_size ; 
 struct ib_pd* lr ; 
 struct ib_pd* lw ; 
 int /*<<< orphan*/  memory_key_mkey_entry ; 
 int FUNC10 (int /*<<< orphan*/ ,TYPE_2__*,void*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx5_ib_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mlx5_ib_dev*,struct ib_umem*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct mlx5_ib_dev*,char*) ; 
 void* FUNC14 (int) ; 
 int /*<<< orphan*/  pg ; 
 struct ib_pd* pg_access ; 
 struct ib_pd* qpn ; 
 struct ib_pd* rr ; 
 struct ib_pd* rw ; 
 int /*<<< orphan*/  start_addr ; 
 struct mlx5_ib_dev* FUNC15 (int /*<<< orphan*/ ) ; 
 struct mlx5_ib_mr* FUNC16 (struct ib_mr*) ; 
 TYPE_1__* FUNC17 (struct ib_pd*) ; 
 struct ib_pd* translations_octword_actual_size ; 
 struct ib_pd* translations_octword_size ; 

__attribute__((used)) static struct mlx5_ib_mr *FUNC18(struct ib_mr *ibmr, struct ib_pd *pd,
				     u64 virt_addr, u64 length,
				     struct ib_umem *umem, int npages,
				     int page_shift, int access_flags)
{
	struct mlx5_ib_dev *dev = FUNC15(pd->device);
	struct mlx5_ib_mr *mr;
	__be64 *pas;
	void *mkc;
	int inlen;
	u32 *in;
	int err;
	bool pg_cap = !!(FUNC2(dev->mdev, pg));

	mr = ibmr ? FUNC16(ibmr) : FUNC9(sizeof(*mr), GFP_KERNEL);
	if (!mr)
		return FUNC0(-ENOMEM);

	inlen = FUNC5(create_mkey_in) +
		sizeof(*pas) * ((npages + 1) / 2) * 2;
	in = FUNC14(inlen);
	if (!in) {
		err = -ENOMEM;
		goto err_1;
	}
	pas = (__be64 *)FUNC1(create_mkey_in, in, klm_pas_mtt);
	FUNC12(dev, umem, page_shift, pas,
			     pg_cap ? MLX5_IB_MTT_PRESENT : 0);

	/* The pg_access bit allows setting the access flags
	 * in the page list submitted with the command. */
	FUNC3(create_mkey_in, in, pg_access, !!(pg_cap));

	mkc = FUNC1(create_mkey_in, in, memory_key_mkey_entry);
	FUNC3(mkc, mkc, access_mode, MLX5_ACCESS_MODE_MTT);
	FUNC3(mkc, mkc, a, !!(access_flags & IB_ACCESS_REMOTE_ATOMIC));
	FUNC3(mkc, mkc, rw, !!(access_flags & IB_ACCESS_REMOTE_WRITE));
	FUNC3(mkc, mkc, rr, !!(access_flags & IB_ACCESS_REMOTE_READ));
	FUNC3(mkc, mkc, lw, !!(access_flags & IB_ACCESS_LOCAL_WRITE));
	FUNC3(mkc, mkc, lr, 1);

	FUNC4(mkc, mkc, start_addr, virt_addr);
	FUNC4(mkc, mkc, len, length);
	FUNC3(mkc, mkc, pd, FUNC17(pd)->pdn);
	FUNC3(mkc, mkc, bsf_octword_size, 0);
	FUNC3(mkc, mkc, translations_octword_size,
		 FUNC6(virt_addr, length, 1 << page_shift));
	FUNC3(mkc, mkc, log_page_size, page_shift);
	FUNC3(mkc, mkc, qpn, 0xffffff);
	FUNC3(create_mkey_in, in, translations_octword_actual_size,
		 FUNC6(virt_addr, length, 1 << page_shift));

	err = FUNC10(dev->mdev, &mr->mmkey, in, inlen);
	if (err) {
		FUNC13(dev, "create mkey failed\n");
		goto err_2;
	}
	mr->umem = umem;
	mr->dev = dev;
	mr->live = 1;
	FUNC8(in);

	FUNC11(dev, "mkey = 0x%x\n", mr->mmkey.key);

	return mr;

err_2:
	FUNC8(in);

err_1:
	if (!ibmr)
		FUNC7(mr);

	return FUNC0(err);
}