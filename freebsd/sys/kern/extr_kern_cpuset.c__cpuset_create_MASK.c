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
struct domainset {int dummy; } ;
struct cpuset {scalar_t__ cs_id; int /*<<< orphan*/  cs_children; int /*<<< orphan*/  cs_parent; int /*<<< orphan*/  cs_mask; struct domainset* cs_domain; scalar_t__ cs_flags; int /*<<< orphan*/  cs_ref; } ;
typedef  scalar_t__ cpusetid_t ;
typedef  int /*<<< orphan*/  cpuset_t ;

/* Variables and functions */
 scalar_t__ CPUSET_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int EDEADLK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct cpuset*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpuset_ids ; 
 int /*<<< orphan*/  cpuset_lock ; 
 int /*<<< orphan*/  FUNC5 (struct cpuset*) ; 
 int /*<<< orphan*/  cs_link ; 
 int /*<<< orphan*/  cs_siblings ; 
 int /*<<< orphan*/  FUNC6 (struct domainset*,struct domainset*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC10(struct cpuset *set, struct cpuset *parent,
    const cpuset_t *mask, struct domainset *domain, cpusetid_t id)
{

	if (domain == NULL)
		domain = parent->cs_domain;
	if (mask == NULL)
		mask = &parent->cs_mask;
	if (!FUNC2(&parent->cs_mask, mask))
		return (EDEADLK);
	/* The domain must be prepared ahead of time. */
	if (!FUNC6(parent->cs_domain, domain))
		return (EDEADLK);
	FUNC1(mask, &set->cs_mask);
	FUNC3(&set->cs_children);
	FUNC9(&set->cs_ref, 1);
	set->cs_flags = 0;
	FUNC7(&cpuset_lock);
	set->cs_domain = domain;
	FUNC0(&set->cs_mask, &parent->cs_mask);
	set->cs_id = id;
	set->cs_parent = FUNC5(parent);
	FUNC4(&parent->cs_children, set, cs_siblings);
	if (set->cs_id != CPUSET_INVALID)
		FUNC4(&cpuset_ids, set, cs_link);
	FUNC8(&cpuset_lock);

	return (0);
}