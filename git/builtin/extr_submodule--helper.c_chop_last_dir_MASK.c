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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* FUNC5 (char*,char) ; 
 char* FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(char **remoteurl, int is_relative)
{
	char *rfind = FUNC2(*remoteurl);
	if (rfind) {
		*rfind = '\0';
		return 0;
	}

	rfind = FUNC5(*remoteurl, ':');
	if (rfind) {
		*rfind = '\0';
		return 1;
	}

	if (is_relative || !FUNC4(".", *remoteurl))
		FUNC1(FUNC0("cannot strip one component off url '%s'"),
			*remoteurl);

	FUNC3(*remoteurl);
	*remoteurl = FUNC6(".");
	return 0;
}