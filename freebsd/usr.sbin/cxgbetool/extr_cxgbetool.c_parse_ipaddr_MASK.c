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
typedef  int uint8_t ;

/* Variables and functions */
 int AF_INET ; 
 int AF_INET6 ; 
 int AF_UNSPEC ; 
 int EINVAL ; 
 int FUNC0 (int,char const*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,unsigned int) ; 
 void* FUNC2 (char const*,char) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 
 unsigned int FUNC4 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static int
FUNC6(const char *param, const char *args[], int *afp, uint8_t addr[],
    uint8_t mask[], int maskless)
{
	const char *colon, *afn;
	char *slash;
	uint8_t *m;
	int af, ret;
	unsigned int masksize;

	/*
	 * Is this our parameter?
	 */
	if (FUNC3(param, args[0]) != 0)
		return (EINVAL);

	/*
	 * Fundamental IPv4 versus IPv6 selection.
	 */
	colon = FUNC2(args[1], ':');
	if (!colon) {
		afn = "IPv4";
		af = AF_INET;
		masksize = 32;
	} else {
		afn = "IPv6";
		af = AF_INET6;
		masksize = 128;
	}
	if (*afp == AF_UNSPEC)
		*afp = af;
	else if (*afp != af) {
		FUNC5("address %s is not of expected family %s",
		    args[1], *afp == AF_INET ? "IP" : "IPv6");
		return (EINVAL);
	}

	/*
	 * Parse address (temporarily stripping off any "/mask"
	 * specification).
	 */
	slash = FUNC2(args[1], '/');
	if (slash)
		*slash = 0;
	ret = FUNC0(af, args[1], addr);
	if (slash)
		*slash = '/';
	if (ret <= 0) {
		FUNC5("Cannot parse %s %s address %s", param, afn, args[1]);
		return (EINVAL);
	}

	/*
	 * Parse optional mask specification.
	 */
	if (slash) {
		char *p;
		unsigned int prefix = FUNC4(slash + 1, &p, 10);

		if (maskless) {
			FUNC5("mask cannot be provided for maskless specification");
			return (EINVAL);
		}

		if (p == slash + 1) {
			FUNC5("missing address prefix for %s", param);
			return (EINVAL);
		}
		if (*p) {
			FUNC5("%s is not a valid address prefix", slash + 1);
			return (EINVAL);
		}
		if (prefix > masksize) {
			FUNC5("prefix %u is too long for an %s address",
			     prefix, afn);
			return (EINVAL);
		}
		FUNC1(mask, 0, masksize / 8);
		masksize = prefix;
	}

	if (mask != NULL) {
		/*
		 * Fill in mask.
		 */
		for (m = mask; masksize >= 8; m++, masksize -= 8)
			*m = ~0;
		if (masksize)
			*m = ~0 << (8 - masksize);
	}

	return (0);
}