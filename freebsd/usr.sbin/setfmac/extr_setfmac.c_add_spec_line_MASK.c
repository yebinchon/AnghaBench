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
struct label_spec_entry {char* regexstr; char* mactext; char* modestr; int /*<<< orphan*/  mode; int /*<<< orphan*/  flags; int /*<<< orphan*/  regex; } ;

/* Variables and functions */
 int /*<<< orphan*/  F_DONTLABEL ; 
 int REG_EXTENDED ; 
 int REG_NOSUB ; 
 int /*<<< orphan*/  S_IFBLK ; 
 int /*<<< orphan*/  S_IFCHR ; 
 int /*<<< orphan*/  S_IFDIR ; 
 int /*<<< orphan*/  S_IFIFO ; 
 int /*<<< orphan*/  S_IFLNK ; 
 int /*<<< orphan*/  S_IFREG ; 
 int /*<<< orphan*/  S_IFSOCK ; 
 int FUNC0 (char**,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*,...) ; 
 char* FUNC3 (size_t) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 size_t FUNC5 (int,int /*<<< orphan*/ *,char*,size_t) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 char* FUNC7 (char*) ; 
 int FUNC8 (char*) ; 
 char* FUNC9 (char*,char*) ; 

void
FUNC10(const char *file, int is_sebsd, struct label_spec_entry *entry,
    char *line)
{
	char *regexstr, *modestr, *macstr, *regerrorstr;
	size_t size;
	int error;

	regexstr = FUNC9(line, " \t");
	if (regexstr == NULL)
		FUNC2(1, "%s: need regular expression", file);
	modestr = FUNC9(NULL, " \t");
	if (modestr == NULL)
		FUNC2(1, "%s: need a label", file);
	macstr = FUNC9(NULL, " \t");
	if (macstr == NULL) {	/* the mode is just optional */
		macstr = modestr;
		modestr = NULL;
	}
	if (FUNC9(NULL, " \t") != NULL)
		FUNC2(1, "%s: extraneous fields at end of line", file);
	/* assume we need to anchor this regex */
	if (FUNC0(&regexstr, "^%s$", regexstr) == -1)
		FUNC1(1, "%s: processing regular expression", file);
	entry->regexstr = regexstr;
	error = FUNC4(&entry->regex, regexstr, REG_EXTENDED | REG_NOSUB);
	if (error) {
		size = FUNC5(error, &entry->regex, NULL, 0);
		regerrorstr = FUNC3(size);
		if (regerrorstr == NULL)
			FUNC1(1, "malloc");
		(void)FUNC5(error, &entry->regex, regerrorstr, size);
		FUNC2(1, "%s: %s: %s", file, entry->regexstr, regerrorstr);
	}
	if (!is_sebsd) {
		entry->mactext = FUNC7(macstr);
		if (entry->mactext == NULL)
			FUNC1(1, "strdup");
	} else {
		if (FUNC0(&entry->mactext, "sebsd/%s", macstr) == -1)
			FUNC1(1, "asprintf");
		if (FUNC6(macstr, "<<none>>") == 0)
			entry->flags |= F_DONTLABEL;
	}
	if (modestr != NULL) {
		if (FUNC8(modestr) != 2 || modestr[0] != '-')
			FUNC2(1, "%s: invalid mode string: %s", file, modestr);
		switch (modestr[1]) {
		case 'b':
			entry->mode = S_IFBLK;
			entry->modestr = ",-b";
			break;
		case 'c':
			entry->mode = S_IFCHR;
			entry->modestr = ",-c";
			break;
		case 'd':
			entry->mode = S_IFDIR;
			entry->modestr = ",-d";
			break;
		case 'p':
			entry->mode = S_IFIFO;
			entry->modestr = ",-p";
			break;
		case 'l':
			entry->mode = S_IFLNK;
			entry->modestr = ",-l";
			break;
		case 's':
			entry->mode = S_IFSOCK;
			entry->modestr = ",-s";
			break;
		case '-':
			entry->mode = S_IFREG;
			entry->modestr = ",--";
			break;
		default:
			FUNC2(1, "%s: invalid mode string: %s", file, modestr);
		}
	} else {
		entry->modestr = "";
	}
}