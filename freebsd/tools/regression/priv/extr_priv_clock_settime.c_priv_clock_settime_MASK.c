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
struct test {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int /*<<< orphan*/  EPERM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  the_time ; 

void
FUNC2(int asroot, int injail, struct test *test)
{
	int error;

	error = FUNC0(CLOCK_REALTIME, &the_time);
	if (asroot && injail)
		FUNC1("priv_clock_settime(asroot, injail)", error, -1,
		    EPERM);
	if (asroot && !injail)
		FUNC1("priv_clock_settime(asroot, !injail)", error, 0, 0);
	if (!asroot && injail)
		FUNC1("priv_clock_settime(!asroot, injail)", error, -1,
		    EPERM);
	if (!asroot && !injail)
		FUNC1("priv_clock_settime(!asroot, !injail", error, -1,
		    EPERM);
}