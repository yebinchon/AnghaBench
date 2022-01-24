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
struct domainset {int* ds_order; scalar_t__ ds_policy; int ds_prefer; int /*<<< orphan*/  ds_mask; int /*<<< orphan*/  ds_cnt; } ;
typedef  int /*<<< orphan*/  domainset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ DOMAINSET_POLICY_PREFER ; 
 scalar_t__ DOMAINSET_POLICY_ROUNDROBIN ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 
 int vm_ndomains ; 

__attribute__((used)) static bool
FUNC8(struct domainset *domain)
{
	domainset_t empty;
	int i, j;

	FUNC6(&empty);
	for (i = 0; i < vm_ndomains; i++)
		if (FUNC7(i))
			FUNC4(i, &empty);
	if (FUNC5(&empty, &domain->ds_mask))
		return (true);

	/* Remove empty domains from the set and recompute. */
	FUNC3(&domain->ds_mask, &empty);
	domain->ds_cnt = FUNC0(&domain->ds_mask);
	for (i = j = 0; i < FUNC1(&domain->ds_mask); i++)
		if (FUNC2(i, &domain->ds_mask))
			domain->ds_order[j++] = i;

	/* Convert a PREFER policy referencing an empty domain to RR. */
	if (domain->ds_policy == DOMAINSET_POLICY_PREFER &&
	    FUNC2(domain->ds_prefer, &empty)) {
		domain->ds_policy = DOMAINSET_POLICY_ROUNDROBIN;
		domain->ds_prefer = -1;
	}

	return (false);
}