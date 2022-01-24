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
typedef  int /*<<< orphan*/  title ;
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  prompt ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int DITEM_FAILURE ; 
 int DITEM_LEAVE_MENU ; 
 int DITEM_RECREATE ; 
 scalar_t__ ENOENT ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_RDONLY ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  R_OK ; 
 int SILLY_BUFFER_SIZE ; 
 int S_IRGRP ; 
 int S_IROTH ; 
 int S_IRUSR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int,int,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC5 (char*,struct stat*) ; 
 int FUNC6 (char const*,int,int) ; 
 char* path_localtime ; 
 int FUNC7 (int,char*,int) ; 
 scalar_t__ reallydoit ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (char const*,char*) ; 
 scalar_t__ FUNC11 (char*) ; 
 scalar_t__ usedialog ; 
 int FUNC12 (int,char*,int) ; 

__attribute__((used)) static int
FUNC13(const char *zoneinfo_file)
{
	char		buf[1024];
	char		title[64], prompt[SILLY_BUFFER_SIZE];
	struct stat	sb;
	ssize_t		len;
	int		fd1, fd2, copymode;

	if (FUNC5(path_localtime, &sb) < 0) {
		/* Nothing there yet... */
		copymode = 1;
	} else if (FUNC0(sb.st_mode))
		copymode = 0;
	else
		copymode = 1;

#ifdef VERBOSE
	snprintf(title, sizeof(title), "Info");
	if (copymode)
		snprintf(prompt, sizeof(prompt),
		    "Copying %s to %s", zoneinfo_file, path_localtime);
	else
		snprintf(prompt, sizeof(prompt),
		    "Creating symbolic link %s to %s",
		    path_localtime, zoneinfo_file);
#ifdef HAVE_DIALOG
	if (usedialog)
		dialog_msgbox(title, prompt, 8, 72, 1);
	else
#endif
		fprintf(stderr, "%s\n", prompt);
#endif

	if (reallydoit) {
		if (copymode) {
			fd1 = FUNC6(zoneinfo_file, O_RDONLY, 0);
			if (fd1 < 0) {
				FUNC8(title, sizeof(title), "Error");
				FUNC8(prompt, sizeof(prompt),
				    "Could not open %s: %s", zoneinfo_file,
				    FUNC9(errno));
#ifdef HAVE_DIALOG
				if (usedialog)
					dialog_msgbox(title, prompt, 8, 72, 1);
				else
#endif
					FUNC4(stderr, "%s\n", prompt);
				return (DITEM_FAILURE | DITEM_RECREATE);
			}

			if (FUNC11(path_localtime) < 0 && errno != ENOENT) {
				FUNC8(prompt, sizeof(prompt),
				    "Could not delete %s: %s",
				    path_localtime, FUNC9(errno));
#ifdef HAVE_DIALOG
				if (usedialog) {
					snprintf(title, sizeof(title), "Error");
					dialog_msgbox(title, prompt, 8, 72, 1);
				} else
#endif
					FUNC4(stderr, "%s\n", prompt);
				return (DITEM_FAILURE | DITEM_RECREATE);
			}

			fd2 = FUNC6(path_localtime, O_CREAT | O_EXCL | O_WRONLY,
			    S_IRUSR | S_IRGRP | S_IROTH);
			if (fd2 < 0) {
				FUNC8(title, sizeof(title), "Error");
				FUNC8(prompt, sizeof(prompt),
				    "Could not open %s: %s",
				    path_localtime, FUNC9(errno));
#ifdef HAVE_DIALOG
				if (usedialog)
					dialog_msgbox(title, prompt, 8, 72, 1);
				else
#endif
					FUNC4(stderr, "%s\n", prompt);
				return (DITEM_FAILURE | DITEM_RECREATE);
			}

			while ((len = FUNC7(fd1, buf, sizeof(buf))) > 0)
				if ((len = FUNC12(fd2, buf, len)) < 0)
					break;

			if (len == -1) {
				FUNC8(title, sizeof(title), "Error");
				FUNC8(prompt, sizeof(prompt),
				    "Error copying %s to %s %s", zoneinfo_file,
				    path_localtime, FUNC9(errno));
#ifdef HAVE_DIALOG
				if (usedialog)
					dialog_msgbox(title, prompt, 8, 72, 1);
				else
#endif
					FUNC4(stderr, "%s\n", prompt);
				/* Better to leave none than a corrupt one. */
				FUNC11(path_localtime);
				return (DITEM_FAILURE | DITEM_RECREATE);
			}
			FUNC2(fd1);
			FUNC2(fd2);
		} else {
			if (FUNC1(zoneinfo_file, R_OK) != 0) {
				FUNC8(title, sizeof(title), "Error");
				FUNC8(prompt, sizeof(prompt),
				    "Cannot access %s: %s", zoneinfo_file,
				    FUNC9(errno));
#ifdef HAVE_DIALOG
				if (usedialog)
					dialog_msgbox(title, prompt, 8, 72, 1);
				else
#endif
					FUNC4(stderr, "%s\n", prompt);
				return (DITEM_FAILURE | DITEM_RECREATE);
			}
			if (FUNC11(path_localtime) < 0 && errno != ENOENT) {
				FUNC8(prompt, sizeof(prompt),
				    "Could not delete %s: %s",
				    path_localtime, FUNC9(errno));
#ifdef HAVE_DIALOG
				if (usedialog) {
					snprintf(title, sizeof(title), "Error");
					dialog_msgbox(title, prompt, 8, 72, 1);
				} else
#endif
					FUNC4(stderr, "%s\n", prompt);
				return (DITEM_FAILURE | DITEM_RECREATE);
			}
			if (FUNC10(zoneinfo_file, path_localtime) < 0) {
				FUNC8(title, sizeof(title), "Error");
				FUNC8(prompt, sizeof(prompt),
				    "Cannot create symbolic link %s to %s: %s",
				    path_localtime, zoneinfo_file,
				    FUNC9(errno));
#ifdef HAVE_DIALOG
				if (usedialog)
					dialog_msgbox(title, prompt, 8, 72, 1);
				else
#endif
					FUNC4(stderr, "%s\n", prompt);
				return (DITEM_FAILURE | DITEM_RECREATE);
			}
		}

#ifdef VERBOSE
		snprintf(title, sizeof(title), "Done");
		if (copymode)
			snprintf(prompt, sizeof(prompt),
			    "Copied timezone file from %s to %s",
			    zoneinfo_file, path_localtime);
		else
			snprintf(prompt, sizeof(prompt),
			    "Created symbolic link from %s to %s",
			    zoneinfo_file, path_localtime);
#ifdef HAVE_DIALOG
		if (usedialog)
			dialog_msgbox(title, prompt, 8, 72, 1);
		else
#endif
			fprintf(stderr, "%s\n", prompt);
#endif
	} /* reallydoit */

	return (DITEM_LEAVE_MENU);
}