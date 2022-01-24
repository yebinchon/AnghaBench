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
struct iser_reg_resources {int mr_valid; int /*<<< orphan*/  mr; } ;
struct ib_pd {int dummy; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_MR_TYPE_MEM_REG ; 
 scalar_t__ ISCSI_ISER_SG_TABLESIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_pd*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC4(struct ib_device *ib_device,
		   struct ib_pd *pd,
		   struct iser_reg_resources *res)
{
	int ret;

	res->mr = FUNC3(pd, IB_MR_TYPE_MEM_REG, ISCSI_ISER_SG_TABLESIZE + 1);
	if (FUNC1(res->mr)) {
		ret = -FUNC2(res->mr);
		FUNC0("Failed to allocate  fast reg mr err=%d", ret);
		return (ret);
	}
	res->mr_valid = 1;

	return (0);
}