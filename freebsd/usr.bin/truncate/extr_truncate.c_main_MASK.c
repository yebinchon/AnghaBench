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
typedef  int /*<<< orphan*/  uint64_t ;
struct stat {scalar_t__ st_size; } ;
typedef  scalar_t__ off_t ;
typedef  int mode_t ;

/* Variables and functions */
 scalar_t__ EFBIG ; 
 scalar_t__ ENOENT ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 int S_IRGRP ; 
 int S_IROTH ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int,struct stat*) ; 
 int FUNC5 (int,scalar_t__) ; 
 int FUNC6 (int,char**,char*) ; 
 int FUNC7 (char*,int,int) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int FUNC8 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 

int
FUNC11(int argc, char **argv)
{
	struct stat sb;
	mode_t omode;
	off_t oflow, rsize, sz, tsize, round;
	uint64_t usz;
	int ch, error, fd, oflags;
	int no_create;
	int do_relative;
	int do_round;
	int do_refer;
	int got_size;
	char *fname, *rname;

	fd = -1;
	rsize = tsize = sz = 0;
	no_create = do_relative = do_round = do_refer = got_size = 0;
	error = 0;
	rname = NULL;
	while ((ch = FUNC6(argc, argv, "cr:s:")) != -1)
		switch (ch) {
		case 'c':
			no_create = 1;
			break;
		case 'r':
			do_refer = 1;
			rname = optarg;
			break;
		case 's':
			if (*optarg == '+' || *optarg == '-') {
				do_relative = 1;
			} else if (*optarg == '%' || *optarg == '/') {
				do_round = 1;
			}
			if (FUNC3(do_relative || do_round ?
			    optarg + 1 : optarg,
			    &usz) == -1 || (off_t)usz < 0)
				FUNC2(EXIT_FAILURE,
				    "invalid size argument `%s'", optarg);

			sz = (*optarg == '-' || *optarg == '/') ?
				-(off_t)usz : (off_t)usz;
			got_size = 1;
			break;
		default:
			FUNC9();
			/* NOTREACHED */
		}

	argv += optind;
	argc -= optind;

	/*
	 * Exactly one of do_refer or got_size must be specified.  Since
	 * do_relative implies got_size, do_relative and do_refer are
	 * also mutually exclusive.  See usage() for allowed invocations.
	 */
	if (do_refer + got_size != 1 || argc < 1)
		FUNC9();
	if (do_refer) {
		if (FUNC8(rname, &sb) == -1)
			FUNC1(EXIT_FAILURE, "%s", rname);
		tsize = sb.st_size;
	} else if (do_relative || do_round)
		rsize = sz;
	else
		tsize = sz;

	if (no_create)
		oflags = O_WRONLY;
	else
		oflags = O_WRONLY | O_CREAT;
	omode = S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH;

	while ((fname = *argv++) != NULL) {
		if (fd != -1)
			FUNC0(fd);
		if ((fd = FUNC7(fname, oflags, omode)) == -1) {
			if (errno != ENOENT) {
				FUNC10("%s", fname);
				error++;
			}
			continue;
		}
		if (do_relative) {
			if (FUNC4(fd, &sb) == -1) {
				FUNC10("%s", fname);
				error++;
				continue;
			}
			oflow = sb.st_size + rsize;
			if (oflow < (sb.st_size + rsize)) {
				errno = EFBIG;
				FUNC10("%s", fname);
				error++;
				continue;
			}
			tsize = oflow;
		}
		if (do_round) {
			if (FUNC4(fd, &sb) == -1) {
				FUNC10("%s", fname);
				error++;
				continue;
			}
			sz = rsize;
			if (sz < 0)
				sz = -sz;
			if (sb.st_size % sz) {
				round = sb.st_size / sz;
				if (round != sz && rsize < 0)
					round--;
				else if (rsize > 0)
					round++;
				tsize = (round < 0 ? 0 : round) * sz;
			} else
				tsize = sb.st_size;
		}
		if (tsize < 0)
			tsize = 0;

		if (FUNC5(fd, tsize) == -1) {
			FUNC10("%s", fname);
			error++;
			continue;
		}
	}
	if (fd != -1)
		FUNC0(fd);

	return error ? EXIT_FAILURE : EXIT_SUCCESS;
}