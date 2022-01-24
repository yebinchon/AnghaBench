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
 scalar_t__ ENOMEM ; 
 size_t SD_FACTOR ; 
 size_t SD_MARGIN ; 
 int SD_MAXMIB ; 
 int SD_NTRIES ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (size_t) ; 
 int FUNC3 (int*,size_t,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,int*,size_t*) ; 

char *
FUNC5(const char *n, size_t *szp)
{
	char   *rv = NULL;
	int    mib[SD_MAXMIB];
	size_t mibsz = SD_MAXMIB;
	size_t mrg = SD_MARGIN;
	size_t sz;
	int i;

	/* cache the MIB */
	if (FUNC4(n, mib, &mibsz) == -1) {
		if (errno == ENOMEM) {
			FUNC0("XXX: SD_MAXMIB too small, please bump!");
		}
		return NULL;
	}
	for (i = 0; i < SD_NTRIES; i++) {
		/* get needed buffer size */
		if (FUNC3(mib, mibsz, NULL, &sz, NULL, 0) == -1)
			break;
		sz += sz * mrg / 100;
		if ((rv = (char *)FUNC2(sz)) == NULL) {
			FUNC0("Out of memory!");
			return NULL;
		}
		if (FUNC3(mib, mibsz, rv, &sz, NULL, 0) == -1) {
			FUNC1(rv);
			rv = NULL;
			if (errno == ENOMEM) {
				mrg += mrg * SD_FACTOR / 100;
			} else
				break;
		} else {
			/* success */
			if (szp != NULL)
				*szp = sz;
			break;
		}
	}

	return rv;
}