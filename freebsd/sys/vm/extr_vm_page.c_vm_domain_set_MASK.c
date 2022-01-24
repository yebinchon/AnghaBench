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
struct vm_domain {int vmd_minset; int vmd_severeset; int /*<<< orphan*/  vmd_domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vm_domainset_lock ; 
 int /*<<< orphan*/  vm_min_domains ; 
 scalar_t__ FUNC3 (struct vm_domain*) ; 
 scalar_t__ FUNC4 (struct vm_domain*) ; 
 int /*<<< orphan*/  vm_severe_domains ; 

void
FUNC5(struct vm_domain *vmd)
{

	FUNC1(&vm_domainset_lock);
	if (!vmd->vmd_minset && FUNC3(vmd)) {
		vmd->vmd_minset = 1;
		FUNC0(vmd->vmd_domain, &vm_min_domains);
	}
	if (!vmd->vmd_severeset && FUNC4(vmd)) {
		vmd->vmd_severeset = 1;
		FUNC0(vmd->vmd_domain, &vm_severe_domains);
	}
	FUNC2(&vm_domainset_lock);
}