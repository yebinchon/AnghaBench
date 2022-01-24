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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void
FUNC1(char *p, int n)
{
	int i, off;

	for (off = 0; n > 0; off += 16, n -= 16) {
		FUNC0("%s%04x:", off == 0 ? "\n" : "", off);
		i = (n >= 16 ? 16 : n);
		do {
			FUNC0(" %02x", *p++ & 0xff);
		} while (--i);
		FUNC0("\n");
	}
}