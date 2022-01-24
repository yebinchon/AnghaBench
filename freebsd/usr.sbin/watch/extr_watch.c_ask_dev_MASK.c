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
 int DEV_NAME_LEN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void
FUNC7(char *dbuf, const char *msg)
{
	char		buf[DEV_NAME_LEN];
	int		len;

	FUNC0();
	FUNC6();

	if (msg)
		FUNC2("%s\n", msg);
	if (dbuf)
		FUNC2("Enter device name [%s]:", dbuf);
	else
		FUNC2("Enter device name:");

	if (FUNC1(buf, DEV_NAME_LEN - 1, stdin)) {
		len = FUNC5(buf);
		if (buf[len - 1] == '\n')
			buf[len - 1] = '\0';
		if (buf[0] != '\0' && buf[0] != ' ')
			FUNC4(dbuf, buf);
	}
	FUNC3();
}