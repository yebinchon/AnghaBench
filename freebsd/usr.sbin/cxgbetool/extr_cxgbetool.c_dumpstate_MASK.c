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
struct t4_cudbg_dump {int len; int /*<<< orphan*/ * data; int /*<<< orphan*/  bitmap; scalar_t__ wr_flash; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHELSIO_T4_CUDBG_DUMP ; 
 int EINVAL ; 
 int ENOMEM ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int S_IRGRP ; 
 int S_IROTH ; 
 int S_IRUSR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct t4_cudbg_dump*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC5 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC9(int argc, const char *argv[])
{
	int rc, fd;
	struct t4_cudbg_dump dump = {0};
	const char *fname = argv[0];

	if (argc != 1) {
		FUNC7("dumpstate: incorrect number of arguments.");
		return (EINVAL);
	}

	dump.wr_flash = 0;
	FUNC4(&dump.bitmap, 0xff, sizeof(dump.bitmap));
	dump.len = 8 * 1024 * 1024;
	dump.data = FUNC3(dump.len);
	if (dump.data == NULL) {
		return (ENOMEM);
	}

	rc = FUNC1(CHELSIO_T4_CUDBG_DUMP, &dump);
	if (rc != 0)
		goto done;

	fd = FUNC5(fname, O_CREAT | O_TRUNC | O_EXCL | O_WRONLY,
	    S_IRUSR | S_IRGRP | S_IROTH);
	if (fd < 0) {
		FUNC6("open(%s)", fname);
		rc = errno;
		goto done;
	}
	FUNC8(fd, dump.data, dump.len);
	FUNC0(fd);
done:
	FUNC2(dump.data);
	return (rc);
}