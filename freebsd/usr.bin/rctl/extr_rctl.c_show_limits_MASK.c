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
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int FUNC4 (char const*,scalar_t__,char*,size_t) ; 
 char* FUNC5 (char*,size_t) ; 
 scalar_t__ FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 

__attribute__((used)) static int
FUNC8(const char *filter, const char *unexpanded_rule,
    int hflag, int nflag)
{
	int error;
	char *outbuf = NULL;
	size_t outbuflen = RCTL_DEFAULT_BUFSIZE / 4;

	for (;;) {
		outbuflen *= 4;
		outbuf = FUNC5(outbuf, outbuflen);
		if (outbuf == NULL)
			FUNC1(1, "realloc");
		error = FUNC4(filter, FUNC6(filter) + 1,
		    outbuf, outbuflen);
		if (error == 0)
			break;
		if (errno == ERANGE)
			continue;
		if (errno == ENOSYS)
			FUNC0();
		FUNC7("failed to get limits for '%s'", unexpanded_rule);
		FUNC2(outbuf);

		return (error);
	}

	FUNC3(outbuf, hflag, nflag);
	FUNC2(outbuf);

	return (error);
}