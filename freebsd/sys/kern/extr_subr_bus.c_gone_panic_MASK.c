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
 int obsolete_panic ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 

__attribute__((used)) static void
FUNC1(int major, int running, const char *msg)
{

	switch (obsolete_panic)
	{
	case 0:
		return;
	case 1:
		if (running < major)
			return;
		/* FALLTHROUGH */
	default:
		FUNC0("%s", msg);
	}
}