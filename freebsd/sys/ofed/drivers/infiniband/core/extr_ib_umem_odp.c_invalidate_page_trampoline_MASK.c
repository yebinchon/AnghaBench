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
typedef  scalar_t__ u64 ;
struct ib_umem {TYPE_1__* context; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* invalidate_range ) (struct ib_umem*,scalar_t__,scalar_t__) ;} ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct ib_umem*) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_umem*) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_umem*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct ib_umem *item, u64 start,
				      u64 end, void *cookie)
{
	FUNC1(item);
	item->context->invalidate_range(item, start, start + PAGE_SIZE);
	FUNC0(item);
	return 0;
}