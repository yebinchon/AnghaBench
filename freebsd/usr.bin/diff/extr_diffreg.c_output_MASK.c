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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ D_CONTEXT ; 
 scalar_t__ D_EDIT ; 
 scalar_t__ D_GFORMAT ; 
 scalar_t__ D_IFDEF ; 
 scalar_t__ D_UNIFIED ; 
 int /*<<< orphan*/  EOF ; 
 int* J ; 
 scalar_t__ anychange ; 
 int /*<<< orphan*/  c ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,int,int,int,int*) ; 
 scalar_t__ diff_format ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int* len ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(char *file1, FILE *f1, char *file2, FILE *f2, int flags)
{
	int m, i0, i1, j0, j1;

	FUNC5(f1);
	FUNC5(f2);
	m = len[0];
	J[0] = 0;
	J[m + 1] = len[1] + 1;
	if (diff_format != D_EDIT) {
		for (i0 = 1; i0 <= m; i0 = i1 + 1) {
			while (i0 <= m && J[i0] == J[i0 - 1] + 1)
				i0++;
			j0 = J[i0 - 1] + 1;
			i1 = i0 - 1;
			while (i1 < m && J[i1 + 1] == 0)
				i1++;
			j1 = J[i1 + 1] - 1;
			J[i1] = j1;
			FUNC0(file1, f1, file2, f2, i0, i1, j0, j1, &flags);
		}
	} else {
		for (i0 = m; i0 >= 1; i0 = i1 - 1) {
			while (i0 >= 1 && J[i0] == J[i0 + 1] - 1 && J[i0] != 0)
				i0--;
			j0 = J[i0 + 1] - 1;
			i1 = i0 + 1;
			while (i1 > 1 && J[i1 - 1] == 0)
				i1--;
			j1 = J[i1 - 1] + 1;
			J[i1] = j1;
			FUNC0(file1, f1, file2, f2, i1, i0, j1, j0, &flags);
		}
	}
	if (m == 0)
		FUNC0(file1, f1, file2, f2, 1, 0, 1, len[1], &flags);
	if (diff_format == D_IFDEF || diff_format == D_GFORMAT) {
		for (;;) {
#define	c i0
			if ((c = FUNC4(f1)) == EOF)
				return;
			FUNC1("%c", c);
		}
#undef c
	}
	if (anychange != 0) {
		if (diff_format == D_CONTEXT)
			FUNC2(f1, f2, flags);
		else if (diff_format == D_UNIFIED)
			FUNC3(f1, f2, flags);
	}
}