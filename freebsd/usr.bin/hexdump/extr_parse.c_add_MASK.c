#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* nextfu; struct TYPE_5__* nextfs; } ;
struct TYPE_4__ {int reps; int /*<<< orphan*/  fmt; void* bcnt; int /*<<< orphan*/  flags; struct TYPE_4__* nextfu; } ;
typedef  TYPE_1__ FU ;
typedef  TYPE_2__ FS ;

/* Variables and functions */
 int /*<<< orphan*/  F_SETREP ; 
 void* FUNC0 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 void* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__* fshead ; 
 scalar_t__ FUNC5 (unsigned char const) ; 
 scalar_t__ FUNC6 (unsigned char const) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned char const*,int) ; 

void
FUNC9(const char *fmt)
{
	unsigned const char *p, *savep;
	static FS **nextfs;
	FS *tfs;
	FU *tfu, **nextfu;

	/* start new linked list of format units */
	if ((tfs = FUNC2(1, sizeof(FS))) == NULL)
		FUNC3(1, NULL);
	if (!fshead)
		fshead = tfs;
	else
		*nextfs = tfs;
	nextfs = &tfs->nextfs;
	nextfu = &tfs->nextfu;

	/* take the format string and break it up into format units */
	for (p = fmt;;) {
		/* skip leading white space */
		for (; FUNC6(*p); ++p);
		if (!*p)
			break;

		/* allocate a new format unit and link it in */
		if ((tfu = FUNC2(1, sizeof(FU))) == NULL)
			FUNC3(1, NULL);
		*nextfu = tfu;
		nextfu = &tfu->nextfu;
		tfu->reps = 1;

		/* if leading digit, repetition count */
		if (FUNC5(*p)) {
			for (savep = p; FUNC5(*p); ++p);
			if (!FUNC6(*p) && *p != '/')
				FUNC1(fmt);
			/* may overwrite either white space or slash */
			tfu->reps = FUNC0(savep);
			tfu->flags = F_SETREP;
			/* skip trailing white space */
			for (++p; FUNC6(*p); ++p);
		}

		/* skip slash and trailing white space */
		if (*p == '/')
			while (FUNC6(*++p));

		/* byte count */
		if (FUNC5(*p)) {
			for (savep = p; FUNC5(*p); ++p);
			if (!FUNC6(*p))
				FUNC1(fmt);
			tfu->bcnt = FUNC0(savep);
			/* skip trailing white space */
			for (++p; FUNC6(*p); ++p);
		}

		/* format */
		if (*p != '"')
			FUNC1(fmt);
		for (savep = ++p; *p != '"';)
			if (*p++ == 0)
				FUNC1(fmt);
		if (!(tfu->fmt = FUNC7(p - savep + 1)))
			FUNC3(1, NULL);
		(void) FUNC8(tfu->fmt, savep, p - savep + 1);
		FUNC4(tfu->fmt);
		p++;
	}
}