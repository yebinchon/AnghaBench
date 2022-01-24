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
 int IFNAMSIZ ; 
 int NM_BDG_IFNAMSIZ ; 
 int /*<<< orphan*/  FUNC0 (char const) ; 
 int FUNC1 (char const*) ; 

__attribute__((used)) static int
FUNC2(const char *name, size_t prefixlen)
{
	int colon_pos = -1;
	int i;

	if (!name || FUNC1(name) < prefixlen) {
		return -1;
	}

	for (i = 0; i < NM_BDG_IFNAMSIZ && name[i]; i++) {
		if (name[i] == ':') {
			colon_pos = i;
			break;
		} else if (!FUNC0(name[i])) {
			return -1;
		}
	}

	if (FUNC1(name) - colon_pos > IFNAMSIZ) {
		/* interface name too long */
		return -1;
	}

	return colon_pos;
}