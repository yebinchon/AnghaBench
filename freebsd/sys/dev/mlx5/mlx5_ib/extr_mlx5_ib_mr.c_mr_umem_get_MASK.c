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
struct mlx5_ib_dev {int dummy; } ;
typedef  void ib_umem ;
struct ib_pd {TYPE_1__* uobject; int /*<<< orphan*/  device; } ;
struct TYPE_2__ {int /*<<< orphan*/  context; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_ib_dev*,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_ib_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5_ib_dev*,char*) ; 
 struct mlx5_ib_dev* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ib_umem *FUNC10(struct ib_pd *pd, u64 start, u64 length,
				   int access_flags, int *npages,
				   int *page_shift, int *ncont, int *order)
{
	struct mlx5_ib_dev *dev = FUNC9(pd->device);
	struct ib_umem *umem = FUNC3(pd->uobject->context, start, length,
					   access_flags, 0);
	if (FUNC1(umem)) {
		FUNC7(dev, "umem get failed (%ld)\n", FUNC2(umem));
		return (void *)umem;
	}

	FUNC5(umem, start, npages, page_shift, ncont, order);
	if (!*npages) {
		FUNC8(dev, "avoid zero region\n");
		FUNC4(umem);
		return FUNC0(-EINVAL);
	}

	FUNC6(dev, "npages %d, ncont %d, order %d, page_shift %d\n",
		    *npages, *ncont, *order, *page_shift);

	return umem;
}