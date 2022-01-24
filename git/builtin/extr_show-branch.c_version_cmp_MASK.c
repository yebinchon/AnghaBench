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
 char* FUNC0 (char const*,int*) ; 

__attribute__((used)) static int FUNC1(const char *a, const char *b)
{
	while (1) {
		int va, vb;

		a = FUNC0(a, &va);
		b = FUNC0(b, &vb);
		if (va != vb)
			return va - vb;

		while (1) {
			int ca = *a;
			int cb = *b;
			if ('0' <= ca && ca <= '9')
				ca = 0;
			if ('0' <= cb && cb <= '9')
				cb = 0;
			if (ca != cb)
				return ca - cb;
			if (!ca)
				break;
			a++;
			b++;
		}
		if (!*a && !*b)
			return 0;
	}
}