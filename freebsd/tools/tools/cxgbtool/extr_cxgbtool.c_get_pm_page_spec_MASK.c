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
 void* FUNC0 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(const char *s, unsigned int *page_size,
    unsigned int *num_pages)
{
	char *p;
	unsigned long val;

	val = FUNC0(s, &p, 0);
	if (p == s) return -1;
	if (*p == 'x' && p[1]) {
		*num_pages = val;
		*page_size = FUNC0(p + 1, &p, 0);
	} else {
		*num_pages = -1;
		*page_size = val;
	}
	*page_size <<= 10;     // KB -> bytes
	return *p;
}