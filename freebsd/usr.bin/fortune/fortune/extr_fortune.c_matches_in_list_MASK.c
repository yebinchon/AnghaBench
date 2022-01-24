#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int str_flags; char str_delim; } ;
struct TYPE_5__ {char* name; TYPE_4__ tbl; int /*<<< orphan*/  inf; int /*<<< orphan*/  path; struct TYPE_5__* child; struct TYPE_5__* next; } ;
typedef  TYPE_1__ FILEDESC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FALSE ; 
 int /*<<< orphan*/  Fort_len ; 
 char* Fortbuf ; 
 void* Found_one ; 
 scalar_t__ REG_NOMATCH ; 
 int /*<<< orphan*/  Re_pat ; 
 int STR_COMMENTS ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_4__) ; 
 int STR_ROTATED ; 
 void* TRUE ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned char) ; 
 scalar_t__ FUNC5 (unsigned char) ; 
 scalar_t__ FUNC6 (unsigned char) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void
FUNC12(FILEDESC *list)
{
	char           *sp, *p;
	FILEDESC	*fp;
	int		in_file;
	unsigned char	ch;

	for (fp = list; fp != NULL; fp = fp->next) {
		if (fp->child != NULL) {
			FUNC12(fp->child);
			continue;
		}
		FUNC0(1, (stderr, "searching in %s\n", fp->path));
		FUNC7(fp);
		sp = Fortbuf;
		in_file = FALSE;
		while (FUNC2(sp, Fort_len, fp->inf) != NULL)
			if (fp->tbl.str_flags & STR_COMMENTS
			    && sp[0] == fp->tbl.str_delim
			    && sp[1] == fp->tbl.str_delim)
				continue;
			else if (!FUNC1(sp, fp->tbl))
				sp += FUNC11(sp);
			else {
				*sp = '\0';
				if (fp->tbl.str_flags & STR_ROTATED)
					for (p = Fortbuf; (ch = *p) != '\0'; ++p) {
						if (FUNC4(ch)) {
							if (FUNC6(ch))
								*p = 'A' + (ch - 'A' + 13) % 26;
							else if (FUNC5(ch))
								*p = 'a' + (ch - 'a' + 13) % 26;
						}
					}
				if (FUNC10(&Re_pat, Fortbuf, 0, NULL, 0) != REG_NOMATCH) {
					FUNC8("%c%c", fp->tbl.str_delim,
					    fp->tbl.str_delim);
					if (!in_file) {
						FUNC8(" (%s)", fp->name);
						Found_one = TRUE;
						in_file = TRUE;
					}
					FUNC9('\n');
					(void) FUNC3(Fortbuf, 1, (sp - Fortbuf), stdout);
				}
				sp = Fortbuf;
			}
	}
}