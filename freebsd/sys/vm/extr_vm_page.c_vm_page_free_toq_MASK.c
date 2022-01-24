#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vm_page_t ;
typedef  int /*<<< orphan*/ * uma_zone_t ;
struct vm_domain {TYPE_1__* vmd_pgcache; } ;
struct TYPE_9__ {size_t pool; int flags; } ;
struct TYPE_8__ {int /*<<< orphan*/ * zone; } ;

/* Variables and functions */
 int PG_PCPU_CACHE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct vm_domain*) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_domain*) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_domain*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 struct vm_domain* FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void
FUNC7(vm_page_t m)
{
	struct vm_domain *vmd;
	uma_zone_t zone;

	if (!FUNC4(m))
		return;

	vmd = FUNC5(m);
	zone = vmd->vmd_pgcache[m->pool].zone;
	if ((m->flags & PG_PCPU_CACHE) != 0 && zone != NULL) {
		FUNC0(zone, m);
		return;
	}
	FUNC1(vmd);
	FUNC6(m, 0);
	FUNC2(vmd);
	FUNC3(vmd, 1);
}