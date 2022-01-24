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
typedef  int uint32_t ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  time_t ;
struct fifolog_writer {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int FIFOLOG_LENGTH ; 
 int FIFOLOG_TIMESTAMP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct fifolog_writer*) ; 
 scalar_t__ FUNC2 (struct fifolog_writer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fifolog_writer*,int,int /*<<< orphan*/ ,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(struct fifolog_writer *f, uint32_t id, time_t now,
    const void *ptr, ssize_t len)
{
	u_int l;
	const unsigned char *p;
	int retval = 0;

	if (now == 0)
		FUNC4(&now);
	FUNC1(f);

	FUNC0(!(id & (FIFOLOG_TIMESTAMP|FIFOLOG_LENGTH)));
	FUNC0(ptr != NULL);

	if (len == 0) {
		if (!FUNC3(f, id, now, ptr, len)) {
			if (FUNC2(f, now) < 0)
				retval = -1;
			/* The string could be too long for the ibuf, so... */
			if (!FUNC3(f, id, now, ptr, len))
				retval = -1;
		}
	} else {
		for (p = ptr; len > 0; len -= l, p += l) {
			l = len;
			if (l > 255)
				l = 255;
			while (!FUNC3(f, id, now, p, l))
				if (FUNC2(f, now) < 0)
					retval = -1;
		}
	}
	if (FUNC2(f, now) < 0)
		retval = -1;
	FUNC1(f);
	return (retval);
}