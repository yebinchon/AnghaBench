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
typedef  int /*<<< orphan*/ * vm_page_t ;
typedef  scalar_t__ vm_paddr_t ;
typedef  int /*<<< orphan*/  uintmax_t ;
struct vm_domain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  blacklist_head ; 
 int /*<<< orphan*/  listq ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_domain*) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_domain*) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_domain*,int) ; 
 struct vm_domain* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

bool
FUNC8(vm_paddr_t pa, bool verbose)
{
	struct vm_domain *vmd;
	vm_page_t m;
	int ret;

	m = FUNC6(pa);
	if (m == NULL)
		return (true); /* page does not exist, no failure */

	vmd = FUNC5(m);
	FUNC2(vmd);
	ret = FUNC7(m);
	FUNC3(vmd);
	if (ret != 0) {
		FUNC4(vmd, -1);
		FUNC0(&blacklist_head, m, listq);
		if (verbose)
			FUNC1("Skipping page with pa 0x%jx\n", (uintmax_t)pa);
	}
	return (ret);
}