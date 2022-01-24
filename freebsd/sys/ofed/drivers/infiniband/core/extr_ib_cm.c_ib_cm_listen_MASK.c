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
struct ib_cm_id {int dummy; } ;
typedef  int /*<<< orphan*/  __be64 ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct ib_cm_id*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ cm ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(struct ib_cm_id *cm_id, __be64 service_id, __be64 service_mask)
{
	unsigned long flags;
	int ret;

	FUNC1(&cm.lock, flags);
	ret = FUNC0(cm_id, service_id, service_mask);
	FUNC2(&cm.lock, flags);

	return ret;
}