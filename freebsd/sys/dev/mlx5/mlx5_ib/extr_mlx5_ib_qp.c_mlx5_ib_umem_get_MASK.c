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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_ib_dev {int dummy; } ;
struct ib_umem {int dummy; } ;
struct ib_pd {TYPE_1__* uobject; } ;
struct TYPE_2__ {int /*<<< orphan*/  context; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ib_umem*) ; 
 int FUNC1 (struct ib_umem*) ; 
 struct ib_umem* FUNC2 (int /*<<< orphan*/ ,unsigned long,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_umem*) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_umem*,unsigned long,int*,int*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_ib_dev*,char*,...) ; 
 int FUNC6 (unsigned long,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_ib_dev*,char*) ; 

__attribute__((used)) static int FUNC8(struct mlx5_ib_dev *dev,
			    struct ib_pd *pd,
			    unsigned long addr, size_t size,
			    struct ib_umem **umem,
			    int *npages, int *page_shift, int *ncont,
			    u32 *offset)
{
	int err;

	*umem = FUNC2(pd->uobject->context, addr, size, 0, 0);
	if (FUNC0(*umem)) {
		FUNC5(dev, "umem_get failed\n");
		return FUNC1(*umem);
	}

	FUNC4(*umem, addr, npages, page_shift, ncont, NULL);

	err = FUNC6(addr, *page_shift, offset);
	if (err) {
		FUNC7(dev, "bad offset\n");
		goto err_umem;
	}

	FUNC5(dev, "addr 0x%lx, size %zu, npages %d, page_shift %d, ncont %d, offset %d\n",
		    addr, size, *npages, *page_shift, *ncont, *offset);

	return 0;

err_umem:
	FUNC3(*umem);
	*umem = NULL;

	return err;
}