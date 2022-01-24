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
 struct cpuset* FUNC0 (struct cpuset*) ; 
 int FUNC1 (struct cpuset*,struct cpuset**,int /*<<< orphan*/ *,struct domainset*,struct setlist*,struct domainlist*) ; 

__attribute__((used)) static int
FUNC2(struct cpuset *tdset, cpuset_t *mask,
    struct domainset *domain, struct cpuset **nsetp,
    struct setlist *freelist, struct domainlist *domainlist)
{
	struct cpuset *parent;

	parent = FUNC0(tdset);
	if (mask == NULL)
		mask = &tdset->cs_mask;
	if (domain == NULL)
		domain = tdset->cs_domain;
	return FUNC1(parent, nsetp, mask, domain, freelist,
	    domainlist);
}