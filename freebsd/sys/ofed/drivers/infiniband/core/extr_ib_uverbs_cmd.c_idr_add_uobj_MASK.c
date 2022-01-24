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
struct idr {int dummy; } ;
struct ib_uobject {int id; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  ib_uverbs_idr_lock ; 
 int FUNC0 (struct idr*,struct ib_uobject*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct idr *idr, struct ib_uobject *uobj)
{
	int ret;

	FUNC1(GFP_KERNEL);
	FUNC3(&ib_uverbs_idr_lock);

	ret = FUNC0(idr, uobj, 0, 0, GFP_NOWAIT);
	if (ret >= 0)
		uobj->id = ret;

	FUNC4(&ib_uverbs_idr_lock);
	FUNC2();

	return ret < 0 ? ret : 0;
}