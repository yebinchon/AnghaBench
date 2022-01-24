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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 char* FUNC4 (char const*) ; 
 char* FUNC5 (char*,char) ; 

void
FUNC6(const char *filename, bool striplast)
{
	char	*tmpbuf;

	if ((tmpbuf = FUNC4(filename)) == NULL)
		FUNC0("out of memory\n");

	if (striplast) {
		char	*s = FUNC5(tmpbuf, '/');
		if (s == NULL) {
			FUNC1(tmpbuf);
			return;	/* nothing to be done */
		}
		*s = '\0';
	}
	if (FUNC2(tmpbuf) != 0)
		FUNC3("creation of %s failed", tmpbuf);
	FUNC1(tmpbuf);
}