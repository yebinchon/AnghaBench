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
typedef  int /*<<< orphan*/  genopt ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EOF ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*,char*) ; 
 char* FUNC7 (char*) ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC11(const char *fname, int flags)
{
	FILE *fp;
	char *wd, *this, *val;
	char genopt[MAXPATHLEN];

	fp = FUNC2(fname, "r");
	if (fp == NULL)
		return (0);
	while ((wd = FUNC5(fp)) != (char *)EOF) {
		if (wd == NULL)
			continue;
		if (wd[0] == '#') {
			while (((wd = FUNC5(fp)) != (char *)EOF) && wd)
				continue;
			continue;
		}
		this = FUNC8(wd);
		val = FUNC5(fp);
		if (val == (char *)EOF)
			return (1);
		if (val == NULL) {
			if (flags) {
				FUNC3(stderr, "%s: compat file requires two"
				    " words per line at %s\n", fname, this);
				FUNC0(1);
			}
			char *s = FUNC8(this);
			(void)FUNC9(genopt, sizeof(genopt), "opt_%s.h",
			    FUNC7(s));
			val = genopt;
			FUNC4(s);
		}
		val = FUNC8(val);
		if (flags == 0)
			FUNC6(fname, this, val);
		else
			FUNC10(this, val, flags);
	}
	(void)FUNC1(fp);
	return (1);
}