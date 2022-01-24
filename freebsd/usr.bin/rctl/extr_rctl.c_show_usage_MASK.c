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
 scalar_t__ ENOSYS ; 
 scalar_t__ ERANGE ; 
 int RCTL_DEFAULT_BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char const*,scalar_t__,char*,size_t) ; 
 char* FUNC6 (char*,size_t) ; 
 scalar_t__ FUNC7 (char const*) ; 
 char* FUNC8 (char**,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 

__attribute__((used)) static int
FUNC10(const char *filter, const char *unexpanded_rule, int hflag)
{
	int error;
	char *copy, *outbuf = NULL, *tmp;
	size_t outbuflen = RCTL_DEFAULT_BUFSIZE / 4;

	for (;;) {
		outbuflen *= 4;
		outbuf = FUNC6(outbuf, outbuflen);
		if (outbuf == NULL)
			FUNC1(1, "realloc");
		error = FUNC5(filter, FUNC7(filter) + 1,
		    outbuf, outbuflen);
		if (error == 0)
			break;
		if (errno == ERANGE)
			continue;
		if (errno == ENOSYS)
			FUNC0();
		FUNC9("failed to show resource consumption for '%s'",
		    unexpanded_rule);
		FUNC2(outbuf);

		return (error);
	}

	copy = outbuf;
	while ((tmp = FUNC8(&copy, ",")) != NULL) {
		if (tmp[0] == '\0')
			break; /* XXX */

		if (hflag)
			tmp = FUNC3(tmp);

		FUNC4("%s\n", tmp);
	}

	FUNC2(outbuf);

	return (error);
}