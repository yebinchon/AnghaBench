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
typedef  int wchar_t ;
typedef  int /*<<< orphan*/  nl_item ;

/* Variables and functions */
 int /*<<< orphan*/  const ABMON_1 ; 
 int /*<<< orphan*/  const ABMON_10 ; 
 int /*<<< orphan*/  const ABMON_11 ; 
 int /*<<< orphan*/  const ABMON_12 ; 
 int /*<<< orphan*/  const ABMON_2 ; 
 int /*<<< orphan*/  const ABMON_3 ; 
 int /*<<< orphan*/  const ABMON_4 ; 
 int /*<<< orphan*/  const ABMON_5 ; 
 int /*<<< orphan*/  const ABMON_6 ; 
 int /*<<< orphan*/  const ABMON_7 ; 
 int /*<<< orphan*/  const ABMON_8 ; 
 int /*<<< orphan*/  const ABMON_9 ; 
 int MB_CUR_MAX ; 
 int FUNC0 (size_t) ; 
 unsigned char** cmonths ; 
 scalar_t__ debug_sort ; 
 size_t FUNC1 (int*,char*,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 void* FUNC5 (int) ; 
 unsigned char* FUNC6 (unsigned char*) ; 
 size_t FUNC7 (unsigned char*) ; 
 unsigned char FUNC8 (unsigned char) ; 
 int FUNC9 (int) ; 
 int** wmonths ; 

void
FUNC10(void)
{
	const nl_item item[12] = { ABMON_1, ABMON_2, ABMON_3, ABMON_4,
	    ABMON_5, ABMON_6, ABMON_7, ABMON_8, ABMON_9, ABMON_10,
	    ABMON_11, ABMON_12 };
	unsigned char *tmp;
	size_t len;

	if (MB_CUR_MAX == 1) {
		if (cmonths == NULL) {
			unsigned char *m;

			cmonths = FUNC5(sizeof(unsigned char*) * 12);
			for (int i = 0; i < 12; i++) {
				cmonths[i] = NULL;
				tmp = (unsigned char *) FUNC2(item[i]);
				if (debug_sort)
					FUNC3("month[%d]=%s\n", i, tmp);
				if (*tmp == '\0')
					continue;
				m = FUNC6(tmp);
				len = FUNC7(tmp);
				for (unsigned int j = 0; j < len; j++)
					m[j] = FUNC8(m[j]);
				cmonths[i] = m;
			}
		}

	} else {
		if (wmonths == NULL) {
			wchar_t *m;

			wmonths = FUNC5(sizeof(wchar_t *) * 12);
			for (int i = 0; i < 12; i++) {
				wmonths[i] = NULL;
				tmp = (unsigned char *) FUNC2(item[i]);
				if (debug_sort)
					FUNC3("month[%d]=%s\n", i, tmp);
				if (*tmp == '\0')
					continue;
				len = FUNC7(tmp);
				m = FUNC5(FUNC0(len + 1));
				if (FUNC1(m, (char*)tmp, len) ==
				    ((size_t) - 1)) {
					FUNC4(m);
					continue;
				}
				m[len] = L'\0';
				for (unsigned int j = 0; j < len; j++)
					m[j] = FUNC9(m[j]);
				wmonths[i] = m;
			}
		}
	}
}