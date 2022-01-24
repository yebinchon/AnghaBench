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
typedef  int /*<<< orphan*/  vm_page_t ;
struct vm_pgcache {int /*<<< orphan*/  pool; int /*<<< orphan*/  domain; } ;
struct vm_domain {int vmd_domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  VM_ALLOC_NORMAL ; 
 struct vm_domain* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vm_domain*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_domain*) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_domain*) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_domain*,int) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(void *arg, void **store, int cnt, int domain, int flags)
{
	struct vm_domain *vmd;
	struct vm_pgcache *pgcache;
	int i;

	pgcache = arg;
	vmd = FUNC0(pgcache->domain);
	/* Only import if we can bring in a full bucket. */
	if (cnt == 1 || !FUNC1(vmd, VM_ALLOC_NORMAL, cnt))
		return (0);
	domain = vmd->vmd_domain;
	FUNC2(vmd);
	i = FUNC5(domain, pgcache->pool, cnt,
	    (vm_page_t *)store);
	FUNC3(vmd);
	if (cnt != i)
		FUNC4(vmd, cnt - i);

	return (i);
}