#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uintmax_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {scalar_t__* zipped; } ;
typedef  TYPE_1__ suffixes_t ;
struct stat {int st_size; int st_nlink; scalar_t__ st_mtime; } ;
typedef  int off_t ;
struct TYPE_5__ {char* ziplen; int /*<<< orphan*/  zipped; } ;

/* Variables and functions */
 int O_CREAT ; 
 int O_EXCL ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int O_WRONLY ; 
 int STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ cflag ; 
 scalar_t__ FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,struct stat*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ fflag ; 
 scalar_t__ FUNC6 (int,struct stat*) ; 
 int FUNC7 (int,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,char*) ; 
 int FUNC12 (char*,int,...) ; 
 char* remove_file ; 
 scalar_t__ FUNC13 (char*,size_t,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdin ; 
 TYPE_2__* suffixes ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,struct stat*) ; 

__attribute__((used)) static off_t
FUNC16(char *file, char *outfile, size_t outsize)
{
	int in;
	int out;
	off_t size, in_size;
#ifndef SMALL
	struct stat isb, osb;
	const suffixes_t *suff;
#endif

	in = FUNC12(file, O_RDONLY);
	if (in == -1) {
		FUNC9("can't open %s", file);
		return (-1);
	}

#ifndef SMALL
	if (FUNC6(in, &isb) != 0) {
		FUNC9("couldn't stat: %s", file);
		FUNC3(in);
		return (-1);
	}
#endif

#ifndef SMALL
	if (FUNC6(in, &isb) != 0) {
		FUNC3(in);
		FUNC9("can't stat %s", file);
		return -1;
	}
	FUNC8(file, isb.st_size);
#endif

	if (cflag == 0) {
#ifndef SMALL
		if (isb.st_nlink > 1 && fflag == 0) {
			FUNC10("%s has %ju other link%s -- "
				    "skipping", file,
				    (uintmax_t)isb.st_nlink - 1,
				    isb.st_nlink == 1 ? "" : "s");
			FUNC3(in);
			return -1;
		}

		if (fflag == 0 && (suff = FUNC2(file, 0)) &&
		    suff->zipped[0] != 0) {
			FUNC10("%s already has %s suffix -- unchanged",
			    file, suff->zipped);
			FUNC3(in);
			return (-1);
		}
#endif

		/* Add (usually) .gz to filename */
		if ((size_t)FUNC13(outfile, outsize, "%s%s",
		    file, suffixes[0].zipped) >= outsize)
			FUNC11(outfile + outsize - suffixes[0].ziplen - 1,
			    suffixes[0].zipped, suffixes[0].ziplen + 1);

#ifndef SMALL
		if (FUNC1(outfile) == 0) {
			FUNC3(in);
			return (-1);
		}
#endif
	}

	if (cflag == 0) {
		out = FUNC12(outfile, O_WRONLY | O_CREAT | O_EXCL, 0600);
		if (out == -1) {
			FUNC9("could not create output: %s", outfile);
			FUNC5(stdin);
			return (-1);
		}
#ifndef SMALL
		remove_file = outfile;
#endif
	} else
		out = STDOUT_FILENO;

	in_size = FUNC7(in, out, &size, FUNC0(file), (uint32_t)isb.st_mtime);

	(void)FUNC3(in);

	/*
	 * If there was an error, in_size will be -1.
	 * If we compressed to stdout, just return the size.
	 * Otherwise stat the file and check it is the correct size.
	 * We only blow away the file if we can stat the output and it
	 * has the expected size.
	 */
	if (cflag != 0)
		return in_size == -1 ? -1 : size;

#ifndef SMALL
	if (FUNC6(out, &osb) != 0) {
		FUNC9("couldn't stat: %s", outfile);
		goto bad_outfile;
	}

	if (osb.st_size != size) {
		FUNC10("output file: %s wrong size (%ju != %ju), deleting",
		    outfile, (uintmax_t)osb.st_size, (uintmax_t)size);
		goto bad_outfile;
	}

	FUNC4(out, &isb, outfile);
	remove_file = NULL;
#endif
	if (FUNC3(out) == -1)
		FUNC9("couldn't close output");

	/* output is good, ok to delete input */
	FUNC15(file, &isb);
	return (size);

#ifndef SMALL
    bad_outfile:
	if (FUNC3(out) == -1)
		FUNC9("couldn't close output");

	FUNC10("leaving original %s", file);
	FUNC14(outfile);
	return (size);
#endif
}