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
typedef  int uintmax_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 

int
FUNC1(uintmax_t num, const char *q, char *outbuf, int tmpsz)
{
	int n, tmp, retval = 0;

	if (num == 0)
		return (retval);

	/* %b conversion flag format. */
	tmp = retval;
	while (*q) {
		n = *q++;
		if (num & (1 << (n - 1))) {
			FUNC0(retval != tmp ?  ',' : '<');
			for (; (n = *q) > ' '; ++q)
				FUNC0(n);
		} else
			for (; *q > ' '; ++q)
				continue;
	}
	if (retval != tmp)
		FUNC0('>');

	return (retval);
}