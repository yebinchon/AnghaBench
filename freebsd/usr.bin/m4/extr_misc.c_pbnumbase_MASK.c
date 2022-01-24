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
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 

void
FUNC2(int n, int base, int d)
{
	static char digits[36] = "0123456789abcdefghijklmnopqrstuvwxyz";
	int num;
	int printed = 0;

	if (base > 36)
		FUNC0(1, "base %d > 36: not supported.", base);

	if (base < 2)
		FUNC0(1, "bad base %d for conversion.", base);

	num = (n < 0) ? -n : n;
	do {
		FUNC1(digits[num % base]);
		printed++;
	}
	while ((num /= base) > 0);

	if (n < 0)
		printed++;
	while (printed++ < d)
		FUNC1('0');

	if (n < 0)
		FUNC1('-');
}