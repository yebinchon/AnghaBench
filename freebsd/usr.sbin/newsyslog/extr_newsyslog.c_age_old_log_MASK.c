#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int time_t ;
struct stat {int st_mtime; } ;
struct TYPE_2__ {int /*<<< orphan*/  suffix; } ;

/* Variables and functions */
 int COMPRESS_TYPES ; 
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int MAXPATHLEN ; 
 char* FUNC1 (size_t) ; 
 char* archdirname ; 
 scalar_t__ archtodir ; 
 TYPE_1__* compress_type ; 
 char* FUNC2 (char*) ; 
 int FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 char* FUNC9 (char const*,char) ; 
 int /*<<< orphan*/ * timefnamefmt ; 
 int /*<<< orphan*/  timenow ; 

__attribute__((used)) static int
FUNC10(const char *file)
{
	struct stat sb;
	const char *logfile_suffix;
	static unsigned int suffix_maxlen = 0;
	char *tmp;
	size_t tmpsiz;
	time_t mtime;
	int c;

	if (suffix_maxlen == 0) {
		for (c = 0; c < COMPRESS_TYPES; c++)
			suffix_maxlen = FUNC0(suffix_maxlen,
			    FUNC8(compress_type[c].suffix));
	}

	tmpsiz = MAXPATHLEN + sizeof(".0") + suffix_maxlen + 1;
	tmp = FUNC1(tmpsiz);

	if (archtodir) {
		char *p;

		/* build name of archive directory into tmp */
		if (*archdirname == '/') {	/* absolute */
			FUNC7(tmp, archdirname, tmpsiz);
		} else {	/* relative */
			/* get directory part of logfile */
			FUNC7(tmp, file, tmpsiz);
			if ((p = FUNC9(tmp, '/')) == NULL)
				tmp[0] = '\0';
			else
				*(p + 1) = '\0';
			FUNC6(tmp, archdirname, tmpsiz);
		}

		FUNC6(tmp, "/", tmpsiz);

		/* get filename part of logfile */
		if ((p = FUNC9(file, '/')) == NULL)
			FUNC6(tmp, file, tmpsiz);
		else
			FUNC6(tmp, p + 1, tmpsiz);
	} else {
		(void) FUNC7(tmp, file, tmpsiz);
	}

	if (timefnamefmt != NULL) {
		mtime = FUNC3(tmp);
		if (mtime == -1)
			return (-1);
	} else {
		FUNC6(tmp, ".0", tmpsiz);
		logfile_suffix = FUNC2(tmp);
		if (logfile_suffix == NULL)
			return (-1);
		(void) FUNC6(tmp, logfile_suffix, tmpsiz);
		if (FUNC5(tmp, &sb) < 0)
			return (-1);
		mtime = sb.st_mtime;
	}

	return ((int)(FUNC4(timenow) - mtime + 1800) / 3600);
}