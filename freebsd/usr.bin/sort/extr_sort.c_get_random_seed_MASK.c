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
struct stat {int st_size; scalar_t__ st_dev; scalar_t__ st_ino; int /*<<< orphan*/  st_mode; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  randseed ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 int /*<<< orphan*/  EX_NOINPUT ; 
 int /*<<< orphan*/  EX_SOFTWARE ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int O_CLOEXEC ; 
 int O_RDONLY ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC7 (int,struct stat*) ; 
 scalar_t__ FUNC8 (char*,int) ; 
 int /*<<< orphan*/  md5_ctx ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (char const*,int) ; 
 int FUNC11 (int,char*,int) ; 
 scalar_t__ FUNC12 (char*,struct stat*) ; 

__attribute__((used)) static void
FUNC13(const char *random_source)
{
	char randseed[32];
	struct stat fsb, rsb;
	ssize_t rd;
	int rsfd;

	rsfd = -1;
	rd = sizeof(randseed);

	if (random_source == NULL) {
		if (FUNC8(randseed, sizeof(randseed)) < 0)
			FUNC5(EX_SOFTWARE, "getentropy");
		goto out;
	}

	rsfd = FUNC10(random_source, O_RDONLY | O_CLOEXEC);
	if (rsfd < 0)
		FUNC5(EX_NOINPUT, "open: %s", random_source);

	if (FUNC7(rsfd, &fsb) != 0)
		FUNC5(EX_SOFTWARE, "fstat");

	if (!FUNC3(fsb.st_mode) && !FUNC2(fsb.st_mode))
		FUNC5(EX_USAGE,
		    "random seed isn't a regular file or /dev/random");

	/*
	 * Regular files: read up to maximum seed size and explicitly
	 * reject longer files.
	 */
	if (FUNC3(fsb.st_mode)) {
		if (fsb.st_size > (off_t)sizeof(randseed))
			FUNC6(EX_USAGE, "random seed is too large (%jd >"
			    " %zu)!", (intmax_t)fsb.st_size,
			    sizeof(randseed));
		else if (fsb.st_size < 1)
			FUNC6(EX_USAGE, "random seed is too small ("
			    "0 bytes)");

		FUNC9(randseed, 0, sizeof(randseed));

		rd = FUNC11(rsfd, randseed, fsb.st_size);
		if (rd < 0)
			FUNC5(EX_SOFTWARE, "reading random seed file %s",
			    random_source);
		if (rd < (ssize_t)fsb.st_size)
			FUNC6(EX_SOFTWARE, "short read from %s", random_source);
	} else if (FUNC2(fsb.st_mode)) {
		if (FUNC12("/dev/random", &rsb) < 0)
			FUNC5(EX_SOFTWARE, "stat");

		if (fsb.st_dev != rsb.st_dev ||
		    fsb.st_ino != rsb.st_ino)
			FUNC6(EX_USAGE, "random seed is a character "
			    "device other than /dev/random");

		if (FUNC8(randseed, sizeof(randseed)) < 0)
			FUNC5(EX_SOFTWARE, "getentropy");
	}

out:
	if (rsfd >= 0)
		FUNC4(rsfd);

	FUNC0(&md5_ctx);
	FUNC1(&md5_ctx, randseed, rd);
}