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
typedef  scalar_t__ vm_page_t ;
struct vm_pgcache {int /*<<< orphan*/  domain; } ;
struct vm_domain {int dummy; } ;

/* Variables and functions */
 struct vm_domain* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vm_domain*) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_domain*) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_domain*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(void *arg, void **store, int cnt)
{
	struct vm_domain *vmd;
	struct vm_pgcache *pgcache;
	vm_page_t m;
	int i;

	pgcache = arg;
	vmd = FUNC0(pgcache->domain);
	FUNC1(vmd);
	for (i = 0; i < cnt; i++) {
		m = (vm_page_t)store[i];
		FUNC4(m, 0);
	}
	FUNC2(vmd);
	FUNC3(vmd, cnt);
}