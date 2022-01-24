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
typedef  char wint_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char WEOF ; 
 scalar_t__ autostop ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 char FUNC1 (int /*<<< orphan*/ *) ; 
 int maxval ; 
 char* positions ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 

__attribute__((used)) static int
FUNC4(FILE *fp, const char *fname)
{
	wint_t ch;
	int col;
	char *pos;

	ch = 0;
	for (;;) {
		pos = positions + 1;
		for (col = maxval; col; --col) {
			if ((ch = FUNC1(fp)) == WEOF)
				goto out;
			if (ch == '\n')
				break;
			if (*pos++)
				(void)FUNC2(ch);
		}
		if (ch != '\n') {
			if (autostop)
				while ((ch = FUNC1(fp)) != WEOF && ch != '\n')
					(void)FUNC2(ch);
			else
				while ((ch = FUNC1(fp)) != WEOF && ch != '\n');
		}
		(void)FUNC2('\n');
	}
out:
	if (FUNC0(fp)) {
		FUNC3("%s", fname);
		return (1);
	}
	return (0);
}