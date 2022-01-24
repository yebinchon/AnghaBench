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
typedef  int u_int8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char const) ; 
 char* progname ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC3 (char const) ; 

__attribute__((used)) static int
FUNC4(const char *arg, u_int8_t *data, size_t maxlen)
{
	const char *cp = arg;
	int len;

	if (cp[0] == '0' && (cp[1] == 'x' || cp[1] == 'X'))
		cp += 2;
	len = 0;
	while (*cp) {
		int b0, b1;
		if (cp[0] == ':' || cp[0] == '-' || cp[0] == '.') {
			cp++;
			continue;
		}
		if (!FUNC2(cp[0])) {
			FUNC1(stderr, "%s: invalid data value %c (not hex)\n",
				progname, cp[0]);
			FUNC0(-1);
		}
		b0 = FUNC3(cp[0]);
		if (cp[1] != '\0') {
			if (!FUNC2(cp[1])) {
				FUNC1(stderr, "%s: invalid data value %c "
					"(not hex)\n", progname, cp[1]);
				FUNC0(-1);
			}
			b1 = FUNC3(cp[1]);
			cp += 2;
		} else {			/* fake up 0<n> */
			b1 = b0, b0 = 0;
			cp += 1;
		}
		if (len > maxlen) {
			FUNC1(stderr,
				"%s: too much data in %s, max %llu bytes\n",
				progname, arg, (unsigned long long) maxlen);
		}
		data[len++] = (b0<<4) | b1;
	}
	return len;
}