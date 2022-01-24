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
 unsigned char FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

struct bwstring *
FUNC2(struct bwstring *str)
{

	if (MB_CUR_MAX == 1) {
		unsigned char *end, *s;

		s = str->data.cstr;
		end = s + str->len;

		while (s < end) {
			*s = FUNC0(*s);
			++s;
		}
	} else {
		wchar_t *end, *s;

		s = str->data.wstr;
		end = s + str->len;

		while (s < end) {
			*s = FUNC1(*s);
			++s;
		}
	}
	return (str);
}