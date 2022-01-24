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
typedef  int /*<<< orphan*/  zoneinfo ;
typedef  int /*<<< orphan*/  vm_guest ;
typedef  int /*<<< orphan*/  title ;
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  prompt ;
struct TYPE_2__ {int /*<<< orphan*/  defaultno; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  DIALOG_VARS ;

/* Variables and functions */
 int DITEM_LEAVE_MENU ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  NCONTINENTS ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int S_IRGRP ; 
 int S_IROTH ; 
 int S_IRUSR ; 
 int S_IWGRP ; 
 int S_IWOTH ; 
 int /*<<< orphan*/  TRUE ; 
 char* _PATH_DB ; 
 char* _PATH_ISO3166 ; 
 char* _PATH_LOCALTIME ; 
 char* _PATH_WALL_CMOS_CLOCK ; 
 char* _PATH_ZONEINFO ; 
 char* _PATH_ZONETAB ; 
 char* chrootenv ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  continents ; 
 TYPE_1__ dialog_vars ; 
 int FUNC1 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int FUNC12 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (char*) ; 
 int FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int FUNC17 (int /*<<< orphan*/ ,int,int) ; 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  path_db ; 
 int /*<<< orphan*/  path_iso3166 ; 
 int /*<<< orphan*/  path_localtime ; 
 int /*<<< orphan*/  path_wall_cmos_clock ; 
 int /*<<< orphan*/  path_zoneinfo ; 
 int /*<<< orphan*/  path_zonetab ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 scalar_t__ reallydoit ; 
 int reinstall ; 
 int /*<<< orphan*/  FUNC20 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 scalar_t__ FUNC23 (char*,struct stat*) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC24 (char*,char*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,char*) ; 
 int FUNC26 (char*) ; 
 scalar_t__ FUNC27 (char*,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 () ; 
 scalar_t__ usedialog ; 
 int /*<<< orphan*/  FUNC31 (char*,char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC32(int argc, char **argv)
{
#ifdef HAVE_DIALOG
	char		title[64], prompt[128];
	int		fd;
#endif
	int		c, rv, skiputc;
	char		vm_guest[16] = "";
	size_t		len = sizeof(vm_guest);

	skiputc = 0;

	/* Default skiputc to 1 for VM guests */
	if (FUNC27("kern.vm_guest", vm_guest, &len, NULL, 0) == 0 &&
	    FUNC24(vm_guest, "none") != 0)
		skiputc = 1;

	while ((c = FUNC12(argc, argv, "C:nrs")) != -1) {
		switch(c) {
		case 'C':
			chrootenv = optarg;
			break;
		case 'n':
			reallydoit = 0;
			break;
		case 'r':
			reinstall = 1;
#ifdef HAVE_DIALOG
			usedialog = 0;
#endif
			break;
		case 's':
			skiputc = 1;
			break;
		default:
			FUNC30();
		}
	}

	if (argc - optind > 1)
		FUNC30();

	if (chrootenv == NULL) {
		FUNC25(path_zonetab, _PATH_ZONETAB);
		FUNC25(path_iso3166, _PATH_ISO3166);
		FUNC25(path_zoneinfo, _PATH_ZONEINFO);
		FUNC25(path_localtime, _PATH_LOCALTIME);
		FUNC25(path_db, _PATH_DB);
		FUNC25(path_wall_cmos_clock, _PATH_WALL_CMOS_CLOCK);
	} else {
		FUNC22(path_zonetab, "%s/%s", chrootenv, _PATH_ZONETAB);
		FUNC22(path_iso3166, "%s/%s", chrootenv, _PATH_ISO3166);
		FUNC22(path_zoneinfo, "%s/%s", chrootenv, _PATH_ZONEINFO);
		FUNC22(path_localtime, "%s/%s", chrootenv, _PATH_LOCALTIME);
		FUNC22(path_db, "%s/%s", chrootenv, _PATH_DB);
		FUNC22(path_wall_cmos_clock, "%s/%s", chrootenv,
		    _PATH_WALL_CMOS_CLOCK);
	}

	/* Override the user-supplied umask. */
	(void)FUNC28(S_IWGRP | S_IWOTH);

	if (reinstall == 1) {
		FILE *f;
		char zoneinfo[MAXPATHLEN];

		if ((f = FUNC11(path_db, "r")) != NULL) {
			if (FUNC10(zoneinfo, sizeof(zoneinfo), f) != NULL) {
				zoneinfo[sizeof(zoneinfo) - 1] = 0;
				if (FUNC26(zoneinfo) > 0) {
					zoneinfo[FUNC26(zoneinfo) - 1] = 0;
					rv = FUNC14(zoneinfo);
					FUNC8(rv & ~DITEM_LEAVE_MENU);
				}
				FUNC7(1, "Error reading %s.\n", path_db);
			}
			FUNC9(f);
			FUNC7(1,
			    "Unable to determine earlier installed zoneinfo "
			    "name. Check %s", path_db);
		}
		FUNC7(1, "Cannot open %s for reading. Does it exist?", path_db);
	}

	/*
	 * If the arguments on the command-line do not specify a file,
	 * then interpret it as a zoneinfo name
	 */
	if (optind == argc - 1) {
		struct stat sb;

		if (FUNC23(argv[optind], &sb) != 0) {
#ifdef HAVE_DIALOG
			usedialog = 0;
#endif
			rv = FUNC14(argv[optind]);
			FUNC8(rv & ~DITEM_LEAVE_MENU);
		}
		/* FALLTHROUGH */
	}
#ifdef HAVE_DIALOG

	read_iso3166_table();
	read_zones();
	sort_countries();
	make_menus();

	init_dialog(stdin, stdout);
	if (skiputc == 0) {
		DIALOG_VARS save_vars;
		int yesno;

		snprintf(title, sizeof(title),
		    "Select local or UTC (Greenwich Mean Time) clock");
		snprintf(prompt, sizeof(prompt),
		    "Is this machine's CMOS clock set to UTC?  "
		    "If it is set to local time,\n"
		    "or you don't know, please choose NO here!");
		dlg_save_vars(&save_vars);
#if !defined(__sparc64__)
		dialog_vars.defaultno = TRUE;
#endif
		yesno = dialog_yesno(title, prompt, 7, 73);
		dlg_restore_vars(&save_vars);
		if (!yesno) {
			if (reallydoit)
				unlink(path_wall_cmos_clock);
		} else {
			if (reallydoit) {
				fd = open(path_wall_cmos_clock,
				    O_WRONLY | O_CREAT | O_TRUNC,
				    S_IRUSR | S_IRGRP | S_IROTH);
				if (fd < 0) {
					end_dialog();
					err(1, "create %s",
					    path_wall_cmos_clock);
				}
				close(fd);
			}
		}
		dlg_clear();
	}
	if (optind == argc - 1) {
		snprintf(title, sizeof(title), "Default timezone provided");
		snprintf(prompt, sizeof(prompt),
		    "\nUse the default `%s' zone?", argv[optind]);
		if (!dialog_yesno(title, prompt, 7, 72)) {
			rv = install_zoneinfo_file(argv[optind]);
			dlg_clear();
			end_dialog();
			exit(rv & ~DITEM_LEAVE_MENU);
		}
		dlg_clear();
	}
	snprintf(title, sizeof(title), "Time Zone Selector");
	snprintf(prompt, sizeof(prompt), "Select a region");
	xdialog_menu(title, prompt, -1, -1, NCONTINENTS, NCONTINENTS,
	    continents);

	dlg_clear();
	end_dialog();
#else
	FUNC30();
#endif
	return (0);
}