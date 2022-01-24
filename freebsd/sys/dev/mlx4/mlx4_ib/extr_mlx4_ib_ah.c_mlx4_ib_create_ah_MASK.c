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
struct mlx4_ib_ah {int dummy; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
struct ib_ah_attr {int ah_flags; int /*<<< orphan*/  port_num; } ;
struct ib_ah {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct ib_ah* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int IB_AH_GRH ; 
 scalar_t__ IB_LINK_LAYER_ETHERNET ; 
 scalar_t__ FUNC1 (struct ib_ah*) ; 
 struct ib_ah* FUNC2 (struct ib_pd*,struct ib_ah_attr*,struct mlx4_ib_ah*) ; 
 struct ib_ah* FUNC3 (struct ib_pd*,struct ib_ah_attr*,struct mlx4_ib_ah*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_ib_ah*) ; 
 struct mlx4_ib_ah* FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct ib_ah *FUNC7(struct ib_pd *pd, struct ib_ah_attr *ah_attr,
				struct ib_udata *udata)

{
	struct mlx4_ib_ah *ah;
	struct ib_ah *ret;

	ah = FUNC5(sizeof *ah, GFP_ATOMIC);
	if (!ah)
		return FUNC0(-ENOMEM);

	if (FUNC6(pd->device, ah_attr->port_num) == IB_LINK_LAYER_ETHERNET) {
		if (!(ah_attr->ah_flags & IB_AH_GRH)) {
			ret = FUNC0(-EINVAL);
		} else {
			/*
			 * TBD: need to handle the case when we get
			 * called in an atomic context and there we
			 * might sleep.  We don't expect this
			 * currently since we're working with link
			 * local addresses which we can translate
			 * without going to sleep.
			 */
			ret = FUNC3(pd, ah_attr, ah);
		}

		if (FUNC1(ret))
			FUNC4(ah);

		return ret;
	} else
		return FUNC2(pd, ah_attr, ah); /* never fails */
}