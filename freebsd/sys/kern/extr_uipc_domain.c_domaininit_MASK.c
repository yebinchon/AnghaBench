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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  dom_mtx ; 
 int domain_init_status ; 
 int max_linkhdr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pffast_callout ; 
 int /*<<< orphan*/  pfslow_callout ; 

__attribute__((used)) static void
FUNC4(void *dummy)
{

	if (max_linkhdr < 16)		/* XXX */
		max_linkhdr = 16;

	FUNC1(&pffast_callout, 1);
	FUNC1(&pfslow_callout, 1);

	FUNC2(&dom_mtx);
	FUNC0(domain_init_status == 0, ("domaininit called too late!"));
	domain_init_status = 1;
	FUNC3(&dom_mtx);
}