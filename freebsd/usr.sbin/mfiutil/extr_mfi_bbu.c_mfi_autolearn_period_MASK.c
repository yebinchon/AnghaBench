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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,char*,...) ; 

void
FUNC1(uint32_t period, char *buf, size_t sz)
{
	unsigned int d, h;
	char *tmp;

	d = period / (24 * 3600);
	h = (period % (24 * 3600)) / 3600;

	tmp = buf;
	if (d != 0) {
		tmp += FUNC0(buf, sz, "%u day%s", d, d == 1 ? "" : "s");
		sz -= tmp - buf;
		if (h != 0) {
			tmp += FUNC0(tmp, sz, ", ");
			sz -= 2;
		}
	}
	if (h != 0)
		FUNC0(tmp, sz, "%u hour%s", h, h == 1 ? "" : "s");

	if (d == 0 && h == 0)
		FUNC0(tmp, sz, "less than 1 hour");
}