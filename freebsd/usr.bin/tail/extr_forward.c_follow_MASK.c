#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct timespec {int tv_sec; int /*<<< orphan*/  tv_nsec; } ;
struct stat {scalar_t__ st_ino; scalar_t__ st_dev; scalar_t__ st_nlink; } ;
struct kevent {int dummy; } ;
typedef  int /*<<< orphan*/  off_t ;
struct TYPE_9__ {int /*<<< orphan*/  file_name; int /*<<< orphan*/ * fp; struct stat st; } ;
typedef  TYPE_1__ file_info_t ;
typedef  enum STYLE { ____Placeholder_STYLE } STYLE ;
struct TYPE_10__ {int /*<<< orphan*/  ident; int /*<<< orphan*/  data; int /*<<< orphan*/  filter; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  EVFILT_READ ; 
 scalar_t__ Fflag ; 
 int /*<<< orphan*/  SEEK_END ; 
 scalar_t__ STDIN_FILENO ; 
#define  USE_KQUEUE 129 
#define  USE_SLEEP 128 
 int action ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ errno ; 
 TYPE_4__* ev ; 
 int /*<<< orphan*/  fa ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct stat*) ; 
 int FUNC5 (scalar_t__,struct stat*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*,int,struct timespec*) ; 
 scalar_t__ kq ; 
 scalar_t__ FUNC8 () ; 
 TYPE_1__* last ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct stat*,struct stat*,int) ; 
 int no_files ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  qflag ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 

void
FUNC16(file_info_t *files, enum STYLE style, off_t off)
{
	int active, ev_change, i, n = -1;
	struct stat sb2;
	file_info_t *file;
	FILE *ftmp;
	struct timespec ts;

	/* Position each of the files */

	file = files;
	active = 0;
	n = 0;
	for (i = 0; i < no_files; i++, file++) {
		if (file->fp) {
			active = 1;
			n++;
			if (no_files > 1 && !qflag)
				FUNC12(file->file_name, 1);
			FUNC4(file->fp, file->file_name, style, off, &file->st);
			if (Fflag && FUNC3(file->fp) != STDIN_FILENO)
				n++;
		}
	}
	if (!Fflag && !active)
		return;

	last = --file;

	kq = FUNC8();
	if (kq < 0)
		FUNC0(1, "kqueue");
	ev = FUNC10(n * sizeof(struct kevent));
	if (! ev)
	    FUNC0(1, "Couldn't allocate memory for kevents.");
	FUNC13(files);

	for (;;) {
		ev_change = 0;
		if (Fflag) {
			for (i = 0, file = files; i < no_files; i++, file++) {
				if (!file->fp) {
					file->fp =
					    FUNC2(fa, file->file_name,
					    "r");
					if (file->fp != NULL &&
					    FUNC5(FUNC3(file->fp), &file->st)
					    == -1) {
						FUNC1(file->fp);
						file->fp = NULL;
					}
					if (file->fp != NULL)
						ev_change++;
					continue;
				}
				if (FUNC3(file->fp) == STDIN_FILENO)
					continue;
				ftmp = FUNC2(fa, file->file_name, "r");
				if (ftmp == NULL ||
				    FUNC5(FUNC3(file->fp), &sb2) == -1) {
					if (errno != ENOENT)
						FUNC6(file->file_name);
					FUNC14(file);
					if (file->fp != NULL) {
						FUNC1(file->fp);
						file->fp = NULL;
					}
					if (ftmp != NULL) {
						FUNC1(ftmp);
					}
					ev_change++;
					continue;
				}

				if (sb2.st_ino != file->st.st_ino ||
				    sb2.st_dev != file->st.st_dev ||
				    sb2.st_nlink == 0) {
					FUNC14(file);
					FUNC1(file->fp);
					file->fp = ftmp;
					FUNC11(&file->st, &sb2,
					    sizeof(struct stat));
					ev_change++;
				} else {
					FUNC1(ftmp);
				}
			}
		}

		for (i = 0, file = files; i < no_files; i++, file++)
			if (file->fp && !FUNC14(file))
				ev_change++;

		if (ev_change)
			FUNC13(files);

		switch (action) {
		case USE_KQUEUE:
			ts.tv_sec = 1;
			ts.tv_nsec = 0;
			/*
			 * In the -F case we set a timeout to ensure that
			 * we re-stat the file at least once every second.
			 */
			n = FUNC7(kq, NULL, 0, ev, 1, Fflag ? &ts : NULL);
			if (n < 0)
				FUNC0(1, "kevent");
			if (n == 0) {
				/* timeout */
				break;
			} else if (ev->filter == EVFILT_READ && ev->data < 0) {
				/* file shrank, reposition to end */
				if (FUNC9(ev->ident, (off_t)0, SEEK_END) == -1) {
					FUNC6(file->file_name);
					continue;
				}
			}
			break;

		case USE_SLEEP:
			(void) FUNC15(250000);
			break;
		}
	}
}