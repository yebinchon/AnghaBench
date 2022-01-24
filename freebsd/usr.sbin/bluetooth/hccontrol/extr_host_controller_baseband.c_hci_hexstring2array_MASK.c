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
typedef  int uint8_t ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int FUNC1 (char const*) ; 

__attribute__((used)) static int
FUNC2(char const *s, uint8_t *a, int asize)
{
	int	i, l, b;

	l = FUNC1(s) / 2;
	if (l > asize)
		l = asize;

	for (i = 0; i < l; i++) {
		b = FUNC0(s + i * 2);
		if (b < 0)
			return (-1);

		a[i] = (b & 0xff);
	}

	return (0);
}