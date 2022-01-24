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
struct stat {int /*<<< orphan*/  st_mode; int /*<<< orphan*/  st_size; } ;
typedef  int /*<<< orphan*/  off_t ;
typedef  enum STYLE { ____Placeholder_STYLE } STYLE ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
#define  FBYTES 131 
#define  FLINES 130 
#define  RBYTES 129 
#define  RLINES 128 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  stdout ; 

void
FUNC11(FILE *fp, const char *fn, enum STYLE style, off_t off, struct stat *sbp)
{
	int ch;

	switch(style) {
	case FBYTES:
		if (off == 0)
			break;
		if (FUNC0(sbp->st_mode)) {
			if (sbp->st_size < off)
				off = sbp->st_size;
			if (FUNC4(fp, off, SEEK_SET) == -1) {
				FUNC6(fn);
				return;
			}
		} else while (off--)
			if ((ch = FUNC5(fp)) == EOF) {
				if (FUNC2(fp)) {
					FUNC6(fn);
					return;
				}
				break;
			}
		break;
	case FLINES:
		if (off == 0)
			break;
		for (;;) {
			if ((ch = FUNC5(fp)) == EOF) {
				if (FUNC2(fp)) {
					FUNC6(fn);
					return;
				}
				break;
			}
			if (ch == '\n' && !--off)
				break;
		}
		break;
	case RBYTES:
		if (FUNC0(sbp->st_mode)) {
			if (sbp->st_size >= off &&
			    FUNC4(fp, -off, SEEK_END) == -1) {
				FUNC6(fn);
				return;
			}
		} else if (off == 0) {
			while (FUNC5(fp) != EOF);
			if (FUNC2(fp)) {
				FUNC6(fn);
				return;
			}
		} else
			if (FUNC1(fp, fn, off))
				return;
		break;
	case RLINES:
		if (FUNC0(sbp->st_mode))
			if (!off) {
				if (FUNC4(fp, (off_t)0, SEEK_END) == -1) {
					FUNC6(fn);
					return;
				}
			} else
				FUNC10(fp, fn, off, sbp);
		else if (off == 0) {
			while (FUNC5(fp) != EOF);
			if (FUNC2(fp)) {
				FUNC6(fn);
				return;
			}
		} else
			if (FUNC7(fp, fn, off))
				return;
		break;
	default:
		break;
	}

	while ((ch = FUNC5(fp)) != EOF)
		if (FUNC9(ch) == EOF)
			FUNC8();
	if (FUNC2(fp)) {
		FUNC6(fn);
		return;
	}
	(void)FUNC3(stdout);
}