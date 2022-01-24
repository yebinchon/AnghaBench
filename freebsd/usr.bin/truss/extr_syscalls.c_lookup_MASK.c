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
struct xlat {char const* str; int val; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

__attribute__((used)) static const char *
FUNC2(struct xlat *xlat, int val, int base)
{
	static char tmp[16];

	for (; xlat->str != NULL; xlat++)
		if (xlat->val == val)
			return (xlat->str);
	switch (base) {
		case 8:
			FUNC1(tmp, "0%o", val);
			break;
		case 16:
			FUNC1(tmp, "0x%x", val);
			break;
		case 10:
			FUNC1(tmp, "%u", val);
			break;
		default:
			FUNC0(1,"Unknown lookup base");
			break;
	}
	return (tmp);
}