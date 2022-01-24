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
struct vm_domain {scalar_t__ vmd_free_count; scalar_t__ vmd_pageout_free_min; int vmd_pageout_pages_needed; int /*<<< orphan*/  vmd_domain; } ;
typedef  int /*<<< orphan*/  domainset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int PDROP ; 
 int PSWP ; 
 struct vm_domain* FUNC2 (int) ; 
 int /*<<< orphan*/ * curproc ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * pageproc ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct vm_domain*) ; 
 int /*<<< orphan*/  vm_domainset_lock ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void
FUNC9(int domain)
{
	struct vm_domain *vmd;
	domainset_t wdom;

	vmd = FUNC2(domain);
	FUNC7(vmd);

	if (curproc == pageproc) {
		FUNC4(&vm_domainset_lock);
		if (vmd->vmd_free_count < vmd->vmd_pageout_free_min) {
			vmd->vmd_pageout_pages_needed = 1;
			FUNC3(&vmd->vmd_pageout_pages_needed,
			    &vm_domainset_lock, PDROP | PSWP, "VMWait", 0);
		} else
			FUNC5(&vm_domainset_lock);
	} else {
		if (pageproc == NULL)
			FUNC6("vm_wait in early boot");
		FUNC1(&wdom);
		FUNC0(vmd->vmd_domain, &wdom);
		FUNC8(&wdom);
	}
}