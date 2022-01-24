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
struct cpuset {scalar_t__ cs_id; } ;
typedef  int /*<<< orphan*/  cpuset_t ;

/* Variables and functions */
 scalar_t__ CPUSET_INVALID ; 
 int FUNC0 (struct cpuset*,struct cpuset*,int /*<<< orphan*/ *,struct domainset*) ; 

__attribute__((used)) static int
FUNC1(struct cpuset *tdset, struct cpuset *set)
{
	struct domainset domain;
	cpuset_t mask;

	if (tdset->cs_id != CPUSET_INVALID)
		return (0);
	return FUNC0(tdset, set, &mask, &domain);
}