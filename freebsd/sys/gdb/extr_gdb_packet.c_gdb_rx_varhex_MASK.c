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
 scalar_t__ FUNC0 (int) ; 
 int EOF ; 
 int FUNC1 () ; 
 scalar_t__ gdb_rxp ; 
 scalar_t__ gdb_rxsz ; 
 scalar_t__ FUNC2 (int) ; 

int
FUNC3(uintmax_t *vp)
{
	uintmax_t v;
	int c, neg;

	c = FUNC1();
	neg = (c == '-') ? 1 : 0;
	if (neg == 1)
		c = FUNC1();
	if (!FUNC2(c)) {
		gdb_rxp -= ((c == -1) ? 0 : 1) + neg;
		gdb_rxsz += ((c == -1) ? 0 : 1) + neg;
		return (-1);
	}
	v = 0;
	do {
		v <<= 4;
		v += FUNC0(c);
		c = FUNC1();
	} while (FUNC2(c));
	if (c != EOF) {
		gdb_rxp--;
		gdb_rxsz++;
	}
	*vp = (neg) ? -v : v;
	return (0);
}