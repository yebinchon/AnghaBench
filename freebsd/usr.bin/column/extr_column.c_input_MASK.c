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
typedef  int u_int ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int DEFNUM ; 
 int MAXLINELEN ; 
 int /*<<< orphan*/ ** FUNC0 (int,int) ; 
 int entries ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int eval ; 
 scalar_t__ FUNC2 (int*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/ ** list ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int maxlength ; 
 int /*<<< orphan*/ ** FUNC5 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int* FUNC7 (int*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int*) ; 
 int FUNC9 (int*) ; 
 int FUNC10 (int*) ; 

__attribute__((used)) static void
FUNC11(FILE *fp)
{
	static int maxentry;
	int len;
	wchar_t *p, buf[MAXLINELEN];

	if (!list)
		if ((list = FUNC0((maxentry = DEFNUM), sizeof(*list))) ==
		    NULL)
			FUNC1(1, NULL);
	while (FUNC2(buf, MAXLINELEN, fp)) {
		for (p = buf; *p && FUNC3(*p); ++p);
		if (!*p)
			continue;
		if (!(p = FUNC7(p, L'\n'))) {
			FUNC6("line too long");
			eval = 1;
			continue;
		}
		*p = L'\0';
		len = FUNC10(buf);
		if (maxlength < len)
			maxlength = len;
		if (entries == maxentry) {
			maxentry += DEFNUM;
			if (!(list = FUNC5(list,
			    (u_int)maxentry * sizeof(*list))))
				FUNC1(1, NULL);
		}
		list[entries] = FUNC4((FUNC9(buf) + 1) * sizeof(wchar_t));
		if (list[entries] == NULL)
			FUNC1(1, NULL);
		FUNC8(list[entries], buf);
		entries++;
	}
}