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
typedef  int /*<<< orphan*/  mbstate_t ;
typedef  int /*<<< orphan*/  mbs ;

/* Variables and functions */
 int /*<<< orphan*/  MB_LEN_MAX ; 
 size_t FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

void
FUNC4(char *p, const char *suffix, size_t suffixlen)
{
	char *q, *r;
	mbstate_t mbs;
	size_t n;

	if (suffixlen && (q = FUNC2(p, '\0') - suffixlen) > p &&
	    FUNC3(suffix, q) == 0) {
		/* Ensure that the match occurred on a character boundary. */
		FUNC1(&mbs, 0, sizeof(mbs));
		for (r = p; r < q; r += n) {
			n = FUNC0(r, MB_LEN_MAX, &mbs);
			if (n == (size_t)-1 || n == (size_t)-2) {
				FUNC1(&mbs, 0, sizeof(mbs));
				n = 1;
			}
		}
		/* Chop off the suffix. */
		if (q == r)
			*q = '\0';
	}
}