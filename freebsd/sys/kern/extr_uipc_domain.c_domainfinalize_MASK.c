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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dom_mtx ; 
 int domain_init_status ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pffast_callout ; 
 int /*<<< orphan*/  pffasttimo ; 
 int /*<<< orphan*/  pfslow_callout ; 
 int /*<<< orphan*/  pfslowtimo ; 

__attribute__((used)) static void
FUNC4(void *dummy)
{

	FUNC2(&dom_mtx);
	FUNC0(domain_init_status == 1, ("domainfinalize called too late!"));
	domain_init_status = 2;
	FUNC3(&dom_mtx);	

	FUNC1(&pffast_callout, 1, pffasttimo, NULL);
	FUNC1(&pfslow_callout, 1, pfslowtimo, NULL);
}