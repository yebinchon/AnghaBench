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
 int /*<<< orphan*/  M_BUS ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 char* FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char const*,char const*,char const*,...) ; 
 scalar_t__ FUNC3 (char const*) ; 

void
FUNC4(const char *system, const char *subsystem, const char *type,
    const char *data, int flags)
{
	int len = 0;
	char *msg;

	if (system == NULL)
		return;		/* BOGUS!  Must specify system. */
	if (subsystem == NULL)
		return;		/* BOGUS!  Must specify subsystem. */
	if (type == NULL)
		return;		/* BOGUS!  Must specify type. */
	len += FUNC3(" system=") + FUNC3(system);
	len += FUNC3(" subsystem=") + FUNC3(subsystem);
	len += FUNC3(" type=") + FUNC3(type);
	/* add in the data message plus newline. */
	if (data != NULL)
		len += FUNC3(data);
	len += 3;	/* '!', '\n', and NUL */
	msg = FUNC1(len, M_BUS, flags);
	if (msg == NULL)
		return;		/* Drop it on the floor */
	if (data != NULL)
		FUNC2(msg, len, "!system=%s subsystem=%s type=%s %s\n",
		    system, subsystem, type, data);
	else
		FUNC2(msg, len, "!system=%s subsystem=%s type=%s\n",
		    system, subsystem, type);
	FUNC0(msg, flags);
}