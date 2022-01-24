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
typedef  int /*<<< orphan*/  strvised ;
typedef  int /*<<< orphan*/  label ;
typedef  int (* fstyp_function ) (int /*<<< orphan*/ *,char*,int) ;
struct TYPE_2__ {int unmountable; int (* function ) (int /*<<< orphan*/ *,char*,int) ;char* name; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int LABEL_LEN ; 
 int VIS_GLOB ; 
 int VIS_NL ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 TYPE_1__* fstypes ; 
 int FUNC3 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char,int) ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 
 int FUNC6 (char*,int,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 

int
FUNC10(int argc, char **argv)
{
	int ch, error, i, nbytes;
	bool ignore_type = false, show_label = false, show_unmountable = false;
	char label[LABEL_LEN + 1], strvised[LABEL_LEN * 4 + 1];
	char *path;
	FILE *fp;
	fstyp_function fstyp_f;

	while ((ch = FUNC3(argc, argv, "lsu")) != -1) {
		switch (ch) {
		case 'l':
			show_label = true;
			break;
		case 's':
			ignore_type = true;
			break;
		case 'u':
			show_unmountable = true;
			break;
		default:
			FUNC8();
		}
	}

	argc -= optind;
	argv += optind;
	if (argc != 1)
		FUNC8();

	path = argv[0];

	fp = FUNC2(path, "r");
	if (fp == NULL)
		FUNC1(1, "%s", path);

	if (FUNC0() < 0)
		FUNC1(1, "cap_enter");

	if (ignore_type == false)
		FUNC7(path, fp);

	FUNC4(label, '\0', sizeof(label));

	for (i = 0;; i++) {
		if (show_unmountable == false && fstypes[i].unmountable == true)
			continue;
		fstyp_f = fstypes[i].function;
		if (fstyp_f == NULL)
			break;

		error = fstyp_f(fp, label, sizeof(label));
		if (error == 0)
			break;
	}

	if (fstypes[i].name == NULL) {
		FUNC9("%s: filesystem not recognized", path);
		return (1);
	}

	if (show_label && label[0] != '\0') {
		/*
		 * XXX: I'd prefer VIS_HTTPSTYLE, but it unconditionally
		 *      encodes spaces.
		 */
		nbytes = FUNC6(strvised, sizeof(strvised), label,
		    VIS_GLOB | VIS_NL, "\"'$");
		if (nbytes == -1)
			FUNC1(1, "strsnvis");

		FUNC5("%s %s\n", fstypes[i].name, strvised);
	} else {
		FUNC5("%s\n", fstypes[i].name);
	}

	return (0);
}