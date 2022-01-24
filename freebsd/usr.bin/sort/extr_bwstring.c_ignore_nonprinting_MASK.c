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
struct bwstring {size_t len; TYPE_1__ data; } ;

/* Variables and functions */
 int MB_CUR_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct bwstring*,size_t) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

struct bwstring *
FUNC3(struct bwstring *str)
{
	size_t newlen = str->len;

	if (MB_CUR_MAX == 1) {
		unsigned char *dst, *end, *src;
		unsigned char c;

		src = str->data.cstr;
		dst = src;
		end = src + str->len;

		while (src < end) {
			c = *src;
			if (FUNC1(c)) {
				*dst = c;
				++dst;
				++src;
			} else {
				++src;
				--newlen;
			}
		}
	} else {
		wchar_t *dst, *end, *src;
		wchar_t c;

		src = str->data.wstr;
		dst = src;
		end = src + str->len;

		while (src < end) {
			c = *src;
			if (FUNC2(c)) {
				*dst = c;
				++dst;
				++src;
			} else {
				++src;
				--newlen;
			}
		}
	}
	FUNC0(str, newlen);

	return (str);
}