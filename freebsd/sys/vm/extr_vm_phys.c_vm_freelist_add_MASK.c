#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
struct vm_freelist {int /*<<< orphan*/  lcnt; int /*<<< orphan*/  pl; } ;
struct TYPE_5__ {int order; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  listq ; 

__attribute__((used)) static void
FUNC2(struct vm_freelist *fl, vm_page_t m, int order, int tail)
{

	m->order = order;
	if (tail)
		FUNC1(&fl[order].pl, m, listq);
	else
		FUNC0(&fl[order].pl, m, listq);
	fl[order].lcnt++;
}