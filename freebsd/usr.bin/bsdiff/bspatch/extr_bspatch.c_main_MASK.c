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
typedef  char u_char ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  intmax_t ;
typedef  int /*<<< orphan*/  cap_rights_t ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  BZFILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int*,int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int BZ_OK ; 
 int BZ_STREAM_END ; 
 int /*<<< orphan*/  CAP_FSTAT ; 
 int /*<<< orphan*/  CAP_READ ; 
 int /*<<< orphan*/  CAP_SEEK ; 
 int /*<<< orphan*/  CAP_UNLINKAT ; 
 int /*<<< orphan*/  CAP_WRITE ; 
 int HEADER_SIZE ; 
 scalar_t__ INT_MAX ; 
 int OFF_MAX ; 
 int O_BINARY ; 
 int O_CREAT ; 
 int /*<<< orphan*/  O_DIRECTORY ; 
 int O_RDONLY ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ SSIZE_MAX ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ *) ; 
 int FUNC9 (int) ; 
 int dirfd ; 
 char* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 
 int /*<<< orphan*/  exit_cleanup ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (char*,char*) ; 
 int FUNC17 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC21 (scalar_t__) ; 
 scalar_t__ FUNC22 (char*,char*,int) ; 
 int /*<<< orphan*/ * newfile ; 
 scalar_t__ FUNC23 (char*) ; 
 int FUNC24 (char*,int,...) ; 
 int FUNC25 (int,int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC26 (int,char*,scalar_t__) ; 
 char* FUNC27 (char*) ; 
 int /*<<< orphan*/  FUNC28 () ; 
 scalar_t__ FUNC29 (int,char*,scalar_t__) ; 

int FUNC30(int argc, char *argv[])
{
	FILE *f, *cpf, *dpf, *epf;
	BZFILE *cpfbz2, *dpfbz2, *epfbz2;
	char *directory, *namebuf;
	int cbz2err, dbz2err, ebz2err;
	int newfd, oldfd;
	off_t oldsize, newsize;
	off_t bzctrllen, bzdatalen;
	u_char header[HEADER_SIZE], buf[8];
	u_char *old, *new;
	off_t oldpos, newpos;
	off_t ctrl[3];
	off_t i, lenread, offset;
#ifndef WITHOUT_CAPSICUM
	cap_rights_t rights_dir, rights_ro, rights_wr;
#endif

	if (argc != 4)
		FUNC28();

	/* Open patch file */
	if ((f = FUNC16(argv[3], "rb")) == NULL)
		FUNC11(1, "fopen(%s)", argv[3]);
	/* Open patch file for control block */
	if ((cpf = FUNC16(argv[3], "rb")) == NULL)
		FUNC11(1, "fopen(%s)", argv[3]);
	/* open patch file for diff block */
	if ((dpf = FUNC16(argv[3], "rb")) == NULL)
		FUNC11(1, "fopen(%s)", argv[3]);
	/* open patch file for extra block */
	if ((epf = FUNC16(argv[3], "rb")) == NULL)
		FUNC11(1, "fopen(%s)", argv[3]);
	/* open oldfile */
	if ((oldfd = FUNC24(argv[1], O_RDONLY | O_BINARY, 0)) < 0)
		FUNC11(1, "open(%s)", argv[1]);
	/* open directory where we'll write newfile */
	if ((namebuf = FUNC27(argv[2])) == NULL ||
	    (directory = FUNC10(namebuf)) == NULL ||
	    (dirfd = FUNC24(directory, O_DIRECTORY)) < 0)
		FUNC11(1, "open %s", argv[2]);
	FUNC18(namebuf);
	if ((newfile = FUNC5(argv[2])) == NULL)
		FUNC11(1, "basename");
	/* open newfile */
	if ((newfd = FUNC25(dirfd, newfile,
	    O_CREAT | O_TRUNC | O_WRONLY | O_BINARY, 0666)) < 0)
		FUNC11(1, "open(%s)", argv[2]);
	FUNC4(exit_cleanup);

#ifndef WITHOUT_CAPSICUM
	if (FUNC6() < 0)
		FUNC11(1, "failed to enter security sandbox");

	FUNC7(&rights_ro, CAP_READ, CAP_FSTAT, CAP_SEEK);
	FUNC7(&rights_wr, CAP_WRITE);
	FUNC7(&rights_dir, CAP_UNLINKAT);

	if (FUNC8(FUNC15(f), &rights_ro) < 0 ||
	    FUNC8(FUNC15(cpf), &rights_ro) < 0 ||
	    FUNC8(FUNC15(dpf), &rights_ro) < 0 ||
	    FUNC8(FUNC15(epf), &rights_ro) < 0 ||
	    FUNC8(oldfd, &rights_ro) < 0 ||
	    FUNC8(newfd, &rights_wr) < 0 ||
	    FUNC8(dirfd, &rights_dir) < 0)
		FUNC11(1, "cap_rights_limit() failed, could not restrict"
		    " capabilities");
#endif

	/*
	File format:
		0	8	"BSDIFF40"
		8	8	X
		16	8	Y
		24	8	sizeof(newfile)
		32	X	bzip2(control block)
		32+X	Y	bzip2(diff block)
		32+X+Y	???	bzip2(extra block)
	with control block a set of triples (x,y,z) meaning "add x bytes
	from oldfile to x bytes from the diff block; copy y bytes from the
	extra block; seek forwards in oldfile by z bytes".
	*/

	/* Read header */
	if (FUNC17(header, 1, HEADER_SIZE, f) < HEADER_SIZE) {
		if (FUNC14(f))
			FUNC12(1, "Corrupt patch");
		FUNC11(1, "fread(%s)", argv[3]);
	}

	/* Check for appropriate magic */
	if (FUNC22(header, "BSDIFF40", 8) != 0)
		FUNC12(1, "Corrupt patch");

	/* Read lengths from header */
	bzctrllen = FUNC23(header + 8);
	bzdatalen = FUNC23(header + 16);
	newsize = FUNC23(header + 24);
	if (bzctrllen < 0 || bzctrllen > OFF_MAX - HEADER_SIZE ||
	    bzdatalen < 0 || bzctrllen + HEADER_SIZE > OFF_MAX - bzdatalen ||
	    newsize < 0 || newsize > SSIZE_MAX)
		FUNC12(1, "Corrupt patch");

	/* Close patch file and re-open it via libbzip2 at the right places */
	if (FUNC13(f))
		FUNC11(1, "fclose(%s)", argv[3]);
	offset = HEADER_SIZE;
	if (FUNC19(cpf, offset, SEEK_SET))
		FUNC11(1, "fseeko(%s, %jd)", argv[3], (intmax_t)offset);
	if ((cpfbz2 = FUNC2(&cbz2err, cpf, 0, 0, NULL, 0)) == NULL)
		FUNC12(1, "BZ2_bzReadOpen, bz2err = %d", cbz2err);
	offset = FUNC3(offset, bzctrllen);
	if (FUNC19(dpf, offset, SEEK_SET))
		FUNC11(1, "fseeko(%s, %jd)", argv[3], (intmax_t)offset);
	if ((dpfbz2 = FUNC2(&dbz2err, dpf, 0, 0, NULL, 0)) == NULL)
		FUNC12(1, "BZ2_bzReadOpen, bz2err = %d", dbz2err);
	offset = FUNC3(offset, bzdatalen);
	if (FUNC19(epf, offset, SEEK_SET))
		FUNC11(1, "fseeko(%s, %jd)", argv[3], (intmax_t)offset);
	if ((epfbz2 = FUNC2(&ebz2err, epf, 0, 0, NULL, 0)) == NULL)
		FUNC12(1, "BZ2_bzReadOpen, bz2err = %d", ebz2err);

	if ((oldsize = FUNC20(oldfd, 0, SEEK_END)) == -1 ||
	    oldsize > SSIZE_MAX ||
	    (old = FUNC21(oldsize)) == NULL ||
	    FUNC20(oldfd, 0, SEEK_SET) != 0 ||
	    FUNC26(oldfd, old, oldsize) != oldsize ||
	    FUNC9(oldfd) == -1)
		FUNC11(1, "%s", argv[1]);
	if ((new = FUNC21(newsize)) == NULL)
		FUNC11(1, NULL);

	oldpos = 0;
	newpos = 0;
	while (newpos < newsize) {
		/* Read control data */
		for (i = 0; i <= 2; i++) {
			lenread = FUNC0(&cbz2err, cpfbz2, buf, 8);
			if ((lenread < 8) || ((cbz2err != BZ_OK) &&
			    (cbz2err != BZ_STREAM_END)))
				FUNC12(1, "Corrupt patch");
			ctrl[i] = FUNC23(buf);
		}

		/* Sanity-check */
		if (ctrl[0] < 0 || ctrl[0] > INT_MAX ||
		    ctrl[1] < 0 || ctrl[1] > INT_MAX)
			FUNC12(1, "Corrupt patch");

		/* Sanity-check */
		if (FUNC3(newpos, ctrl[0]) > newsize)
			FUNC12(1, "Corrupt patch");

		/* Read diff string */
		lenread = FUNC0(&dbz2err, dpfbz2, new + newpos, ctrl[0]);
		if ((lenread < ctrl[0]) ||
		    ((dbz2err != BZ_OK) && (dbz2err != BZ_STREAM_END)))
			FUNC12(1, "Corrupt patch");

		/* Add old data to diff string */
		for (i = 0; i < ctrl[0]; i++)
			if (FUNC3(oldpos, i) < oldsize)
				new[newpos + i] += old[oldpos + i];

		/* Adjust pointers */
		newpos = FUNC3(newpos, ctrl[0]);
		oldpos = FUNC3(oldpos, ctrl[0]);

		/* Sanity-check */
		if (FUNC3(newpos, ctrl[1]) > newsize)
			FUNC12(1, "Corrupt patch");

		/* Read extra string */
		lenread = FUNC0(&ebz2err, epfbz2, new + newpos, ctrl[1]);
		if ((lenread < ctrl[1]) ||
		    ((ebz2err != BZ_OK) && (ebz2err != BZ_STREAM_END)))
			FUNC12(1, "Corrupt patch");

		/* Adjust pointers */
		newpos = FUNC3(newpos, ctrl[1]);
		oldpos = FUNC3(oldpos, ctrl[2]);
	}

	/* Clean up the bzip2 reads */
	FUNC1(&cbz2err, cpfbz2);
	FUNC1(&dbz2err, dpfbz2);
	FUNC1(&ebz2err, epfbz2);
	if (FUNC13(cpf) || FUNC13(dpf) || FUNC13(epf))
		FUNC11(1, "fclose(%s)", argv[3]);

	/* Write the new file */
	if (FUNC29(newfd, new, newsize) != newsize || FUNC9(newfd) == -1)
		FUNC11(1, "%s", argv[2]);
	/* Disable atexit cleanup */
	newfile = NULL;

	FUNC18(new);
	FUNC18(old);

	return (0);
}