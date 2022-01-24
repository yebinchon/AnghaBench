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
 scalar_t__* cmonths ; 
 scalar_t__ FUNC0 (unsigned char const) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  const* FUNC3 (int /*<<< orphan*/  const*,scalar_t__) ; 
 scalar_t__* wmonths ; 

int
FUNC4(const struct bwstring *s0)
{

	if (MB_CUR_MAX == 1) {
		const unsigned char *end, *s;

		s = s0->data.cstr;
		end = s + s0->len;

		while (FUNC0(*s) && s < end)
			++s;

		for (int i = 11; i >= 0; --i) {
			if (cmonths[i] &&
			    (s == (unsigned char*)FUNC2((const char*)s, (char*)(cmonths[i]))))
				return (i);
		}

	} else {
		const wchar_t *end, *s;

		s = s0->data.wstr;
		end = s + s0->len;

		while (FUNC1(*s) && s < end)
			++s;

		for (int i = 11; i >= 0; --i) {
			if (wmonths[i] && (s == FUNC3(s, wmonths[i])))
				return (i);
		}
	}

	return (-1);
}