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
struct object_id {int dummy; } ;

/* Variables and functions */
 unsigned int OPT_QUIET ; 
 char* FUNC0 (char const*,char*) ; 
 char* FUNC1 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void FUNC3(unsigned int flags, char state, const char *path,
			 const struct object_id *oid, const char *displaypath)
{
	if (flags & OPT_QUIET)
		return;

	FUNC2("%c%s %s", state, FUNC1(oid), displaypath);

	if (state == ' ' || state == '+') {
		const char *name = FUNC0(path, FUNC1(oid));

		if (name)
			FUNC2(" (%s)", name);
	}

	FUNC2("\n");
}