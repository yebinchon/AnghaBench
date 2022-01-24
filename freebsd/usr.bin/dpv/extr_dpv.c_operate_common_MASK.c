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
struct stat {int /*<<< orphan*/  st_blksize; int /*<<< orphan*/  st_mode; } ;
struct dpv_file_node {int path; void* status; } ;
typedef  int /*<<< orphan*/  blksize_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUFSIZE_MAX ; 
 scalar_t__ BUFSIZE_SMALL ; 
#define  DPV_OUTPUT_FILE 129 
#define  DPV_OUTPUT_SHELL 128 
 void* DPV_STATUS_FAILED ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MAXPHYS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 scalar_t__ PHYSPAGES_THRESHOLD ; 
 scalar_t__ STDIN_FILENO ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _SC_PAGESIZE ; 
 int /*<<< orphan*/  _SC_PHYS_PAGES ; 
 scalar_t__ bsize ; 
 int /*<<< orphan*/ * buf ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ fd ; 
 scalar_t__ FUNC6 (int,struct stat*) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC8 (scalar_t__) ; 
 scalar_t__ multiple ; 
 scalar_t__ FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int output_type ; 
 scalar_t__ FUNC10 (int,char*) ; 
 char* rpath ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 

__attribute__((used)) static int
FUNC13(struct dpv_file_node *file, int out)
{
	struct stat sb;

	/* Open the file if necessary */
	if (fd < 0) {
		if (multiple) {
			/* Resolve the file path and attempt to open it */
			if (FUNC10(file->path, rpath) == 0 ||
			    (fd = FUNC9(rpath, O_RDONLY)) < 0) {
				FUNC12("%s", file->path);
				file->status = DPV_STATUS_FAILED;
				return (-1);
			}
		} else {
			/* Assume stdin, but if that's a TTY instead use the
			 * highest numbered file descriptor (obtained by
			 * generating new fd and then decrementing).
			 *
			 * NB: /dev/stdin should always be open(2)'able
			 */
			fd = STDIN_FILENO;
			if (FUNC7(fd)) {
				fd = FUNC9("/dev/stdin", O_RDONLY);
				FUNC3(fd--);
			}

			/* This answer might be wrong, if dpv(3) has (by
			 * request) opened an output file or pipe. If we
			 * told dpv(3) to open a file, subtract one from
			 * previous answer. If instead we told dpv(3) to
			 * prepare a pipe output, subtract two.
			 */
			switch(output_type) {
			case DPV_OUTPUT_FILE:
				fd -= 1;
				break;
			case DPV_OUTPUT_SHELL:
				fd -= 2;
				break;
			}
		}
	}

	/* Allocate buffer if necessary */
	if (buf == NULL) {
		/* Use output block size as buffer size if available */
		if (out >= 0) {
			if (FUNC6(out, &sb) != 0) {
				FUNC12("%i", out);
				file->status = DPV_STATUS_FAILED;
				return (-1);
			}
			if (FUNC2(sb.st_mode)) {
				if (FUNC11(_SC_PHYS_PAGES) >
				    PHYSPAGES_THRESHOLD)
					bsize = FUNC1(BUFSIZE_MAX, MAXPHYS * 8);
				else
					bsize = BUFSIZE_SMALL;
			} else
				bsize = FUNC0(sb.st_blksize,
				    (blksize_t)FUNC11(_SC_PAGESIZE));
		} else
			bsize = FUNC1(BUFSIZE_MAX, MAXPHYS * 8);

		/* Attempt to allocate */
		if ((buf = FUNC8(bsize+1)) == NULL) {
			FUNC4();
			FUNC5(EXIT_FAILURE, "Out of memory?!");
		}
	}

	return (0);
}