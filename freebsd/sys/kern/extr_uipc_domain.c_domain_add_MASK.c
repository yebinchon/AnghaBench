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
struct domain {char* dom_name; struct domain* dom_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  dom_mtx ; 
 int domain_init_status ; 
 struct domain* domains ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

void
FUNC4(void *data)
{
	struct domain *dp;

	dp = (struct domain *)data;
	FUNC1(&dom_mtx);
	dp->dom_next = domains;
	domains = dp;

	FUNC0(domain_init_status >= 1,
	    ("attempt to domain_add(%s) before domaininit()",
	    dp->dom_name));
#ifndef INVARIANTS
	if (domain_init_status < 1)
		FUNC3("WARNING: attempt to domain_add(%s) before "
		    "domaininit()\n", dp->dom_name);
#endif
#ifdef notyet
	KASSERT(domain_init_status < 2,
	    ("attempt to domain_add(%s) after domainfinalize()",
	    dp->dom_name));
#else
	if (domain_init_status >= 2)
		FUNC3("WARNING: attempt to domain_add(%s) after "
		    "domainfinalize()\n", dp->dom_name);
#endif
	FUNC2(&dom_mtx);
}