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
 scalar_t__ EOF ; 
 int* buf ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (char*,int*) ; 

FUNC2()
{
	int	i;
	unsigned short *p = buf, *q = &buf[4];
	unsigned long sum, sum2;

	while (FUNC1("%x", &i) != EOF) {
		*p++ = i; FUNC0("%d ", i);
	}
	FUNC0("\n");

	sum = buf[2] + (buf[3] >> 8) & 0xff;
	while (q != p)
		sum += (*q++ & 0xffff);
	sum2 = (sum & 0xffff) + (sum >> 16) & 0xffff;
	FUNC0("%x, %x\n", sum, sum2);
}