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
struct modes {int /*<<< orphan*/ * m_name; int /*<<< orphan*/  m_mode; } ;

/* Variables and functions */
 char* mode ; 
 struct modes* modes ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(int argc, char *argv[])
{
	struct modes *p;
	const char *sep;

	if (argc < 2) {
		FUNC0("Using %s mode to transfer files.\n", mode);
		return;
	}
	if (argc == 2) {
		for (p = modes; p->m_name; p++)
			if (FUNC2(argv[1], p->m_name) == 0)
				break;
		if (p->m_name) {
			FUNC1(p->m_mode);
			return;
		}
		FUNC0("%s: unknown mode\n", argv[1]);
		/* drop through and print usage message */
	}

	FUNC0("usage: %s [", argv[0]);
	sep = " ";
	for (p = modes; p->m_name != NULL; p++) {
		FUNC0("%s%s", sep, p->m_name);
		if (*sep == ' ')
			sep = " | ";
	}
	FUNC0(" ]\n");
	return;
}