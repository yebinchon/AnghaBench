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
struct setlist {int dummy; } ;
struct domainset {int dummy; } ;
struct domainlist {int dummy; } ;
struct cpuset {struct domainset* cs_domain; int /*<<< orphan*/  cs_mask; } ;
typedef  int /*<<< orphan*/  cpuset_t ;

/* Variables and functions */
 int /*<<< orphan*/  CPUSET_INVALID ; 
 struct cpuset* FUNC0 (struct setlist*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpuset*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cpuset*,struct cpuset*,int /*<<< orphan*/  const*,struct domainset*,int /*<<< orphan*/ ) ; 
 struct cpuset* FUNC3 (struct cpuset*) ; 
 int FUNC4 (struct cpuset*,int /*<<< orphan*/  const*,struct domainset const*) ; 
 int /*<<< orphan*/  cs_link ; 
 struct domainset* FUNC5 (struct domainset*,struct domainset const*,struct domainlist*) ; 

__attribute__((used)) static int
FUNC6(struct cpuset *set, struct cpuset **nsetp,
   const cpuset_t *mask, const struct domainset *domain,
   struct setlist *cpusets, struct domainlist *domains)
{
	struct cpuset *parent;
	struct cpuset *nset;
	struct domainset *dset;
	struct domainset *d;
	int error;

	error = FUNC4(set, mask, domain);
	if (error)
		return (error);

	parent = FUNC3(set);
	dset = parent->cs_domain;
	if (mask == NULL)
		mask = &set->cs_mask;
	if (domain != NULL)
		d = FUNC5(dset, domain, domains);
	else
		d = set->cs_domain;
	nset = FUNC0(cpusets);
	error = FUNC2(nset, parent, mask, d, CPUSET_INVALID);
	if (error == 0) {
		FUNC1(nset, cs_link);
		*nsetp = nset;
	}
	return (error);
}