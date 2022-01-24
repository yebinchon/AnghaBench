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
struct ib_umem {TYPE_2__* context; TYPE_1__* odp_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* invalidate_range ) (struct ib_umem*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {int dying; int /*<<< orphan*/  notifier_completion; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_umem*) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_umem*) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_umem*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct ib_umem*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ib_umem *item, u64 start,
					       u64 end, void *cookie) {
	/*
	 * Increase the number of notifiers running, to
	 * prevent any further fault handling on this MR.
	 */
	FUNC2(item);
	item->odp_data->dying = 1;
	/* Make sure that the fact the umem is dying is out before we release
	 * all pending page faults. */
	FUNC4();
	FUNC0(&item->odp_data->notifier_completion);
	item->context->invalidate_range(item, FUNC3(item),
					FUNC1(item));
	return 0;
}