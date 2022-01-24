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
struct cpuset {struct domainset* cs_domain; int /*<<< orphan*/  cs_mask; } ;
typedef  int /*<<< orphan*/  cpuset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int EINVAL ; 
 struct cpuset* FUNC1 (struct cpuset*) ; 
 int /*<<< orphan*/  FUNC2 (struct domainset*,struct domainset const*) ; 

__attribute__((used)) static int
FUNC3(struct cpuset *set, const cpuset_t *mask,
    const struct domainset *domain)
{
	struct cpuset *parent;
	struct domainset *dset;

	parent = FUNC1(set);
	/*
	 * If we are restricting a cpu mask it must be a subset of the
	 * parent or invalid CPUs have been specified.
	 */
	if (mask != NULL && !FUNC0(&parent->cs_mask, mask))
		return (EINVAL);

	/*
	 * If we are restricting a domain mask it must be a subset of the
	 * parent or invalid domains have been specified.
	 */
	dset = parent->cs_domain;
	if (domain != NULL && !FUNC2(dset, domain))
		return (EINVAL);

	return (0);
}