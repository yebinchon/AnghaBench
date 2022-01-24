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
typedef  int wchar_t ;
struct TYPE_2__ {char* cstr; int* wstr; } ;
struct bwstring {size_t len; TYPE_1__ data; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t FUNC0 (struct bwstring*) ; 
 int MB_CUR_MAX ; 
 int FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC4 (char*,size_t,int,int /*<<< orphan*/ *) ; 

size_t
FUNC5(struct bwstring *bws, FILE *f, bool zero_ended)
{

	if (MB_CUR_MAX == 1) {
		size_t len = bws->len;

		if (!zero_ended) {
			bws->data.cstr[len] = '\n';

			if (FUNC4(bws->data.cstr, len + 1, 1, f) < 1)
				FUNC2(2, NULL);

			bws->data.cstr[len] = '\0';
		} else if (FUNC4(bws->data.cstr, len + 1, 1, f) < 1)
			FUNC2(2, NULL);

		return (len + 1);

	} else {
		wchar_t eols;
		size_t printed = 0;

		eols = zero_ended ? FUNC1('\0') : FUNC1('\n');

		while (printed < FUNC0(bws)) {
			const wchar_t *s = bws->data.wstr + printed;

			if (*s == L'\0') {
				int nums;

				nums = FUNC3(f, L"%lc", *s);

				if (nums != 1)
					FUNC2(2, NULL);
				++printed;
			} else {
				int nums;

				nums = FUNC3(f, L"%ls", s);

				if (nums < 1)
					FUNC2(2, NULL);
				printed += nums;
			}
		}
		FUNC3(f, L"%lc", eols);
		return (printed + 1);
	}
}