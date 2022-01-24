#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct domainset {scalar_t__ ds_policy; int /*<<< orphan*/  ds_mask; int /*<<< orphan*/  ds_prefer; } ;
struct TYPE_2__ {int /*<<< orphan*/  ds_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ DOMAINSET_POLICY_INVALID ; 
 scalar_t__ DOMAINSET_POLICY_MAX ; 
 scalar_t__ DOMAINSET_POLICY_PREFER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 struct domainset* FUNC2 (struct domainset*,int /*<<< orphan*/ *) ; 
 TYPE_1__ domainset0 ; 
 int /*<<< orphan*/  FUNC3 (struct domainset const*,struct domainset*) ; 
 int /*<<< orphan*/  domainset_zone ; 
 struct domainset* FUNC4 (int /*<<< orphan*/ ,int) ; 

struct domainset *
FUNC5(const struct domainset *domain)
{
	struct domainset *ndomain;

	/*
	 * Validate the policy.  It must specify a useable policy number with
	 * only valid domains.  Preferred must include the preferred domain
	 * in the mask.
	 */
	if (domain->ds_policy <= DOMAINSET_POLICY_INVALID ||
	    domain->ds_policy > DOMAINSET_POLICY_MAX)
		return (NULL);
	if (domain->ds_policy == DOMAINSET_POLICY_PREFER &&
	    !FUNC0(domain->ds_prefer, &domain->ds_mask))
		return (NULL);
	if (!FUNC1(&domainset0.ds_mask, &domain->ds_mask))
		return (NULL);
	ndomain = FUNC4(domainset_zone, M_WAITOK | M_ZERO);
	FUNC3(domain, ndomain);
	return FUNC2(ndomain, NULL);
}