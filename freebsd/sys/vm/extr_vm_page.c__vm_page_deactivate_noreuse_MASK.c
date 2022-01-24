#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
struct TYPE_8__ {int aflags; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int PGA_REQUEUE_HEAD ; 
 int /*<<< orphan*/  PQ_INACTIVE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(vm_page_t m)
{

	FUNC1(m);

	if (!FUNC3(m)) {
		FUNC2(m);
		m->queue = PQ_INACTIVE;
	}
	if ((m->aflags & PGA_REQUEUE_HEAD) == 0)
		FUNC0(m, PGA_REQUEUE_HEAD);
	FUNC4(m, PQ_INACTIVE);
}