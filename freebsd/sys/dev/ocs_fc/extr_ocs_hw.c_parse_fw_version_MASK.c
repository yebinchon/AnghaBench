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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int) ; 
 int /*<<< orphan*/  HW_FWREV_MAX ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint64_t
FUNC2(const char *fwrev_string)
{
	int v[4] = {0};
	const char *p;
	int i;

	for (p = fwrev_string, i = 0; *p && (i < 4); i ++) {
		v[i] = FUNC1(p, 0, 0);
		while(*p && *p != '.') {
			p ++;
		}
		if (*p) {
			p ++;
		}
	}

	/* Special case for bootleg releases with f/w rev 0.0.9999.0, set to max value */
	if (v[2] == 9999) {
		return HW_FWREV_MAX;
	} else {
		return FUNC0(v[0], v[1], v[2], v[3]);
	}
}