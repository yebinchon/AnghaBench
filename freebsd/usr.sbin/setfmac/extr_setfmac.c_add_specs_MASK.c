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
struct label_specs {int /*<<< orphan*/  head; } ;
struct label_spec {size_t nentries; int /*<<< orphan*/ * entries; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct label_spec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (size_t,int) ; 
 int FUNC3 (char**,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/ * FUNC10 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  link ; 
 struct label_spec* FUNC12 (int) ; 
 int /*<<< orphan*/  qflag ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*,long) ; 

void
FUNC15(struct label_specs *specs, const char *file, int is_sebsd)
{
	struct label_spec *spec;
	FILE *fp;
	char *line;
	size_t nlines = 0, linesize;
	int freeline;

	spec = FUNC12(sizeof(*spec));
	if (spec == NULL)
		FUNC4(1, "malloc");
	fp = FUNC10(file, "r");
	if (fp == NULL)
		FUNC4(1, "opening %s", file);
	while ((line = FUNC9(fp, &linesize)) != NULL) {
		freeline = FUNC3(&line, &linesize);
		if (linesize > 0) /* only allocate space for non-comments */
			nlines++;
		if (freeline)
			FUNC11(line);
	}
	if (FUNC8(fp))
		FUNC4(1, "fgetln on %s", file);
	FUNC13(fp);
	spec->entries = FUNC2(nlines, sizeof(*spec->entries));
	if (spec->entries == NULL)
		FUNC4(1, "malloc");
	spec->nentries = nlines;
	while (nlines > 0) {
		line = FUNC9(fp, &linesize);
		if (line == NULL) {
			if (FUNC7(fp))
				FUNC5(1, "%s ended prematurely", file);
			else
				FUNC4(1, "failure reading %s", file);
		}
		freeline = FUNC3(&line, &linesize);
		if (linesize == 0) {
			if (freeline)
				FUNC11(line);
			continue;
		}
		FUNC1(file, is_sebsd, &spec->entries[--nlines], line);
		if (freeline)
			FUNC11(line);
	}
	FUNC6(fp);
	if (!qflag)
		FUNC14("%s: read %lu specifications", file,
		    (long)spec->nentries);
	FUNC0(&specs->head, spec, link);
}