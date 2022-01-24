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
struct statinfo {TYPE_1__* dinfo; } ;
typedef  int /*<<< orphan*/  devstat_select_mode ;
struct TYPE_2__ {int /*<<< orphan*/  devices; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS_MATCHTYPE_PATTERN ; 
 int /*<<< orphan*/  dev_select ; 
 scalar_t__ FUNC0 (char*,char**,scalar_t__*) ; 
 int /*<<< orphan*/  devstat_errbuf ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  generation ; 
 int /*<<< orphan*/  last_type ; 
 char* matches ; 
 int /*<<< orphan*/  num_devices ; 
 scalar_t__ num_matches ; 
 int /*<<< orphan*/  num_selected ; 
 int /*<<< orphan*/  num_selections ; 
 int /*<<< orphan*/  select_generation ; 
 char* FUNC4 (char const*) ; 
 char* FUNC5 (char**,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static int
FUNC7(const char *args, devstat_select_mode select_mode, int maxshowdevs,
	      struct statinfo *s1)
{
	char **tempstr, *tmpstr, *tmpstr1;
	char *tstr[100];
	int num_args = 0;
	int i;
	int retval = 0;

	if (!args) {
		FUNC6("dsmatchselect: no arguments");
		return(1);
	}

	/*
	 * Break the (pipe delimited) input string out into separate
	 * strings.
	 */
	tmpstr = tmpstr1 = FUNC4(args);
	for (tempstr = tstr, num_args  = 0;
	     (*tempstr = FUNC5(&tmpstr1, "|")) != NULL && (num_args < 100);
	     num_args++)
		if (**tempstr != '\0')
			if (++tempstr >= &tstr[100])
				break;
	FUNC3(tmpstr);

	if (num_args > 99) {
		FUNC6("dsmatchselect: too many match arguments");
		return(0);
	}

	/*
	 * If we've gone through the matching code before, clean out
	 * previously used memory.
	 */
	if (num_matches > 0) {
		FUNC3(matches);
		matches = NULL;
		num_matches = 0;
	}

	for (i = 0; i < num_args; i++) {
		if (FUNC0(tstr[i], &matches, &num_matches) != 0) {
			FUNC6("%s", devstat_errbuf);
			return(0);
		}
	}
	if (num_args > 0) {

		last_type = DS_MATCHTYPE_PATTERN;

		retval = FUNC1(&dev_select, &num_selected,
		    &num_selections, &select_generation, generation,
		    s1->dinfo->devices, num_devices, matches, num_matches,
		    NULL, 0, select_mode, maxshowdevs, 0);
		if (retval == -1)
			FUNC2(1, "device selection error");
		else if (retval == 1)
			return(2);
	}
	return(1);
}