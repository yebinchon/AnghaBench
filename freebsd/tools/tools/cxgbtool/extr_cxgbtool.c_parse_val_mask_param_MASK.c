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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(const char *s, uint32_t *val, uint32_t *mask,
    uint32_t default_mask)
{
	char *p;

	*mask = default_mask;
	*val = FUNC0(s, &p, 0);
	if (p == s || *val > default_mask)
		return -1;
	if (*p == ':' && p[1])
		*mask = FUNC0(p + 1, &p, 0);
	return *p || *mask > default_mask ? -1 : 0;
}