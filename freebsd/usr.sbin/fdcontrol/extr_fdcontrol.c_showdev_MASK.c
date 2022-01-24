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
typedef  enum fd_drivetype { ____Placeholder_fd_drivetype } fd_drivetype ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char const**,char const**) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,...) ; 
 scalar_t__ verbose ; 

void
FUNC2(enum fd_drivetype type, const char *fname)
{
	const char *name, *descr;

	FUNC0(type, &name, &descr);
	if (verbose)
		FUNC1("%s: %s drive (%s)\n", fname, name, descr);
	else
		FUNC1("%s\n", name);
}