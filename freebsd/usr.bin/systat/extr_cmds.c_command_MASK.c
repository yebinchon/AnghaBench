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
struct cmdtab {int c_flags; int /*<<< orphan*/  (* c_cmd ) (char*,char*) ;scalar_t__ (* c_init ) () ;int /*<<< orphan*/ * (* c_open ) () ;int /*<<< orphan*/  (* c_close ) (int /*<<< orphan*/ *) ;scalar_t__ c_name; } ;

/* Variables and functions */
 int CF_INIT ; 
 int /*<<< orphan*/  CMDLINE ; 
 int COLS ; 
 scalar_t__ UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct cmdtab* cmdtab ; 
 struct cmdtab* curcmd ; 
 unsigned int delay ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 struct cmdtab* FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ FUNC15 (char*,char*) ; 
 char* FUNC16 (char const*) ; 
 int FUNC17 (scalar_t__) ; 
 double FUNC18 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 () ; 
 int /*<<< orphan*/ * FUNC21 () ; 
 scalar_t__ FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (char*,char*) ; 
 int /*<<< orphan*/ * wnd ; 

void
FUNC24(const char *cmd)
{
	struct cmdtab *p;
	char *cp, *tmpstr, *tmpstr1;
	double t;

	tmpstr = tmpstr1 = FUNC16(cmd);
	for (cp = tmpstr1; *cp && !FUNC8(*cp); cp++)
		;
	if (*cp)
		*cp++ = '\0';
	if (*tmpstr1 == '\0')
		goto done;
	for (; *cp && FUNC8(*cp); cp++)
		;
	if (FUNC15(tmpstr1, "quit") == 0 || FUNC15(tmpstr1, "q") == 0)
		FUNC3(0);
	if (FUNC15(tmpstr1, "load") == 0) {
		FUNC10();
		goto done;
	}
	if (FUNC15(tmpstr1, "stop") == 0) {
		delay = 0;
		FUNC13(CMDLINE, 0, "Refresh disabled.");
		FUNC2();
		goto done;
	}
	if (FUNC15(tmpstr1, "help") == 0) {
		int _col, _len;

		FUNC12(CMDLINE, _col = 0);
		for (p = cmdtab; p->c_name; p++) {
			_len = FUNC17(p->c_name);
			if (_col + _len > COLS)
				break;
			FUNC1(p->c_name); _col += _len;
			if (_col + 1 < COLS)
				FUNC0(' ');
		}
		FUNC2();
		goto done;
	}
	t = FUNC18(tmpstr1, NULL) * 1000000.0;
	if (t > 0 && t < (double)UINT_MAX)
		delay = (unsigned int)t;
	if ((t <= 0 || t > (double)UINT_MAX) &&
	    (FUNC15(tmpstr1, "start") == 0 ||
	    FUNC15(tmpstr1, "interval") == 0)) {
		if (*cp != '\0') {
			t = FUNC18(cp, NULL) * 1000000.0;
			if (t <= 0 || t >= (double)UINT_MAX) {
				FUNC5("%d: bad interval.", (int)t);
				goto done;
			}
		}
	}
	if (t > 0) {
		delay = (unsigned int)t;
		FUNC4();
		FUNC14();
		goto done;
	}
	p = FUNC11(tmpstr1);
	if (p == (struct cmdtab *)-1) {
		FUNC5("%s: Ambiguous command.", tmpstr1);
		goto done;
	}
	if (p) {
		if (curcmd == p)
			goto done;
		(*curcmd->c_close)(wnd);
		curcmd->c_flags &= ~CF_INIT;
		wnd = (*p->c_open)();
		if (wnd == NULL) {
			FUNC5("Couldn't open new display");
			wnd = (*curcmd->c_open)();
			if (wnd == NULL) {
				FUNC5("Couldn't change back to previous cmd");
				FUNC6(1);
			}
			p = curcmd;
		}
		if ((p->c_flags & CF_INIT) == 0) {
			if ((*p->c_init)())
				p->c_flags |= CF_INIT;
			else
				goto done;
		}
		curcmd = p;
		FUNC9();
		FUNC4();
		FUNC14();
		goto done;
	}
	if (curcmd->c_cmd == NULL || !(*curcmd->c_cmd)(tmpstr1, cp))
		FUNC5("%s: Unknown command.", tmpstr1);
done:
	FUNC7(tmpstr);
}