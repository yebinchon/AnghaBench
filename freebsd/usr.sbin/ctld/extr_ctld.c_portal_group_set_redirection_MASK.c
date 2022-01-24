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
struct portal_group {int /*<<< orphan*/ * pg_redirection; int /*<<< orphan*/  pg_name; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int /*<<< orphan*/ ) ; 

int
FUNC2(struct portal_group *pg, const char *addr)
{

	if (pg->pg_redirection != NULL) {
		FUNC1("cannot set redirection to \"%s\" for "
		    "portal-group \"%s\"; already defined",
		    addr, pg->pg_name);
		return (1);
	}

	pg->pg_redirection = FUNC0(addr);

	return (0);
}