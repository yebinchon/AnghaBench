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
struct sockaddr {int dummy; } ;
struct epoch_tracker {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct epoch_tracker) ; 
 int /*<<< orphan*/  FUNC1 (struct epoch_tracker) ; 
 int /*<<< orphan*/ * FUNC2 (struct sockaddr const*) ; 

int
FUNC3(const struct sockaddr *addr)
{
	struct epoch_tracker et;
	int rc;

	FUNC0(et);
	rc = (FUNC2(addr) != NULL);
	FUNC1(et);
	return (rc);
}