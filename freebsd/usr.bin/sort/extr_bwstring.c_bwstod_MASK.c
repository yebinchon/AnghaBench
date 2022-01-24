#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_2__ {unsigned char* cstr; int /*<<< orphan*/ * wstr; } ;
struct bwstring {int len; TYPE_1__ data; } ;

/* Variables and functions */
 int MB_CUR_MAX ; 
 scalar_t__ FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 double FUNC4 (char*,char**) ; 
 double FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

double
FUNC6(struct bwstring *s0, bool *empty)
{
	double ret = 0;

	if (MB_CUR_MAX == 1) {
		unsigned char *end, *s;
		char *ep;

		s = s0->data.cstr;
		end = s + s0->len;
		ep = NULL;

		while (FUNC0(*s) && s < end)
			++s;

		if (!FUNC1(*s)) {
			*empty = true;
			return (0);
		}

		ret = FUNC4((char*)s, &ep);
		if ((unsigned char*) ep == s) {
			*empty = true;
			return (0);
		}
	} else {
		wchar_t *end, *ep, *s;

		s = s0->data.wstr;
		end = s + s0->len;
		ep = NULL;

		while (FUNC2(*s) && s < end)
			++s;

		if (!FUNC3(*s)) {
			*empty = true;
			return (0);
		}

		ret = FUNC5(s, &ep);
		if (ep == s) {
			*empty = true;
			return (0);
		}
	}

	*empty = false;
	return (ret);
}