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
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*,int) ; 

__attribute__((used)) static int
FUNC2(const char *compat, int len,
    const char *onecompat)
{
	int onelen, l, ret;

	onelen = FUNC0(onecompat);

	ret = 0;
	while (len > 0) {
		if (FUNC0(compat) == onelen &&
		    FUNC1(compat, onecompat, onelen) == 0) {
			/* Found it. */
			ret = 1;
			break;
		}

		/* Slide to the next sub-string. */
		l = FUNC0(compat) + 1;
		compat += l;
		len -= l;
	}

	return (ret);
}