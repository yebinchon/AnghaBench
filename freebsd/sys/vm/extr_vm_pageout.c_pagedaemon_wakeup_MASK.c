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
struct vm_domain {int /*<<< orphan*/  vmd_pageout_wanted; } ;

/* Variables and functions */
 struct vm_domain* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ curproc ; 
 scalar_t__ pageproc ; 
 int /*<<< orphan*/  FUNC3 (struct vm_domain*) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_domain*) ; 
 int /*<<< orphan*/  FUNC5 (struct vm_domain*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(int domain)
{
	struct vm_domain *vmd;

	vmd = FUNC0(domain);
	FUNC3(vmd);
	if (curproc == pageproc)
		return;

	if (FUNC1(&vmd->vmd_pageout_wanted, 1) == 0) {
		FUNC4(vmd);
		FUNC2(&vmd->vmd_pageout_wanted, 1);
		FUNC6(&vmd->vmd_pageout_wanted);
		FUNC5(vmd);
	}
}