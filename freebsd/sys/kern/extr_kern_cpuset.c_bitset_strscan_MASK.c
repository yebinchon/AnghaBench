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
struct bitset {int /*<<< orphan*/ * __bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct bitset*) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (char const) ; 
 int FUNC3 (char const*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct bitset *set, int setlen, const char *buf)
{
	int i, ret;
	const char *p;

	FUNC0(setlen, set);
	p = buf;
	for (i = 0; i < FUNC1(setlen); i++) {
		if (*p == ',') {
			p++;
			continue;
		}
		ret = FUNC3(p, "%lx", &set->__bits[i]);
		if (ret == 0 || ret == -1)
			break;
		while (FUNC2(*p))
			p++;
	}
	return (p - buf);
}