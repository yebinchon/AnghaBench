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
struct mlx5_ib_mr {int order; int umred; int /*<<< orphan*/  out; int /*<<< orphan*/  mmkey; struct mlx5_ib_dev* dev; } ;
typedef  struct mlx5_ib_mr u32 ;
struct mlx5_mr_cache {struct mlx5_cache_ent* ent; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; struct mlx5_mr_cache cache; } ;
struct mlx5_cache_ent {int order; scalar_t__ pending; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ MAX_PENDING_REG_MR ; 
 int MLX5_ACCESS_MODE_MTT ; 
 void* FUNC0 (int /*<<< orphan*/ ,struct mlx5_ib_mr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  access_mode ; 
 int /*<<< orphan*/  create_mkey_in ; 
 int /*<<< orphan*/  free ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_ib_mr*) ; 
 struct mlx5_ib_mr* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_page_size ; 
 int /*<<< orphan*/  memory_key_mkey_entry ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mlx5_ib_mr*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct mlx5_ib_mr*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_ib_dev*,char*,int) ; 
 int /*<<< orphan*/  qpn ; 
 int /*<<< orphan*/  reg_mr_callback ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  translations_octword_size ; 
 int /*<<< orphan*/  umr_en ; 

__attribute__((used)) static int FUNC9(struct mlx5_ib_dev *dev, int c, int num)
{
	struct mlx5_mr_cache *cache = &dev->cache;
	struct mlx5_cache_ent *ent = &cache->ent[c];
	int inlen = FUNC2(create_mkey_in);
	struct mlx5_ib_mr *mr;
	int npages = 1 << ent->order;
	void *mkc;
	u32 *in;
	int err = 0;
	int i;

	in = FUNC4(inlen, GFP_KERNEL);
	if (!in)
		return -ENOMEM;

	mkc = FUNC0(create_mkey_in, in, memory_key_mkey_entry);
	for (i = 0; i < num; i++) {
		if (ent->pending >= MAX_PENDING_REG_MR) {
			err = -EAGAIN;
			break;
		}

		mr = FUNC4(sizeof(*mr), GFP_KERNEL);
		if (!mr) {
			err = -ENOMEM;
			break;
		}
		mr->order = ent->order;
		mr->umred = 1;
		mr->dev = dev;

		FUNC1(mkc, mkc, free, 1);
		FUNC1(mkc, mkc, umr_en, 1);
		FUNC1(mkc, mkc, access_mode, MLX5_ACCESS_MODE_MTT);

		FUNC1(mkc, mkc, qpn, 0xffffff);
		FUNC1(mkc, mkc, translations_octword_size, (npages + 1) / 2);
		FUNC1(mkc, mkc, log_page_size, 12);

		FUNC7(&ent->lock);
		ent->pending++;
		FUNC8(&ent->lock);
		err = FUNC5(dev->mdev, &mr->mmkey,
					       in, inlen,
					       mr->out, sizeof(mr->out),
					       reg_mr_callback, mr);
		if (err) {
			FUNC7(&ent->lock);
			ent->pending--;
			FUNC8(&ent->lock);
			FUNC6(dev, "create mkey failed %d\n", err);
			FUNC3(mr);
			break;
		}
	}

	FUNC3(in);
	return err;
}