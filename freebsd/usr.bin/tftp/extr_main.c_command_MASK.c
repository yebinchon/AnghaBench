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
struct cmd {int /*<<< orphan*/  (* handler ) (scalar_t__,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  History ;
typedef  int /*<<< orphan*/  HistEvent ;
typedef  int /*<<< orphan*/  EditLine ;

/* Variables and functions */
 int /*<<< orphan*/  H_ENTER ; 
 int MAXLINE ; 
 int FUNC0 (int,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 struct cmd* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ margc ; 
 int /*<<< orphan*/ * margv ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  stdin ; 
 char* FUNC10 (char*,char) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  txrx_error ; 

__attribute__((used)) static void
FUNC12(bool interactive, EditLine *el, History *hist, HistEvent *hep)
{
	struct cmd *c;
	const char *bp;
	char *cp;
	int len, num;
	char	line[MAXLINE];

	for (;;) {
		if (interactive) {
			if ((bp = FUNC1(el, &num)) == NULL || num == 0)
				FUNC2(0);
			len = FUNC0(MAXLINE, num);
			FUNC8(line, bp, len);
			line[len - 1] = '\0';
			FUNC6(hist, hep, H_ENTER, bp);
		} else {
			line[0] = 0;
			if (FUNC4(line, sizeof line , stdin) == NULL) {
				if (FUNC3(stdin)) {
					FUNC2(txrx_error);
				} else {
					continue;
				}
			}
		}
		if ((cp = FUNC10(line, '\n')))
			*cp = '\0';
		if (line[0] == 0)
			continue;
		FUNC7(line);
		if (margc == 0)
			continue;
		c = FUNC5(margv[0]);
		if (c == (struct cmd *)-1) {
			FUNC9("?Ambiguous command\n");
			continue;
		}
		if (c == NULL) {
			FUNC9("?Invalid command\n");
			continue;
		}
		(*c->handler)(margc, margv);
	}
}