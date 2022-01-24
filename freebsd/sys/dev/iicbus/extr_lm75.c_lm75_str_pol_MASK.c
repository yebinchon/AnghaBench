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
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC2(char *buf)
{
	int len, rtrn;

	rtrn = -1;
	len = FUNC0(buf);
	if (len > 1 && FUNC1("high", buf, len) == 0)
		rtrn = 1;
	else if (len > 1 && FUNC1("low", buf, len) == 0)
		rtrn = 0;
	else if (len > 8 && FUNC1("active-high", buf, len) == 0)
		rtrn = 1;
	else if (len > 8 && FUNC1("active-low", buf, len) == 0)
		rtrn = 0;

	return (rtrn);
}