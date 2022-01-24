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
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  bitstr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__*,int) ; 
 scalar_t__ xsize ; 

__attribute__((used)) static void
FUNC3(bitstr_t *m, int32_t fb, int32_t make, int32_t fd)
{
	int32_t	i, *b, *eob, n, buf[64];

	b = buf;
	eob = b + sizeof(buf)/sizeof(buf[0]);
	i = fb;

	while (i < xsize) {
		if (FUNC0(m, i)) {
			n = FUNC1(i, make, b, eob);
			if (n == -1) {
				FUNC2(fd, buf, (b - buf) * sizeof(buf[0]));
				b = buf;
				continue;
			}

			b += n;
		}

		i ++;
	}

	if (b != buf)
		FUNC2(fd, buf, (b - buf) * sizeof(buf[0]));
}