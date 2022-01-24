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
typedef  int u_int8_t ;
struct gctl_req {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct gctl_req*) ; 
 struct gctl_req* FUNC6 () ; 
 char* FUNC7 (struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC8 (struct gctl_req*,char*,int,...) ; 
 scalar_t__ FUNC9 (char*) ; 
 int FUNC10 (char const*,int,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*) ; 
 int FUNC12 (int,int*,int) ; 

__attribute__((used)) static void
FUNC13(const char *fname, int flags, u_int8_t *mbr, int mbr_size,
    int disable_dsn)
{
	struct gctl_req *grq;
	const char *errmsg;
	char *pname;
	ssize_t n;
	int fd;

	fd = FUNC10(fname, O_WRONLY | flags, 0666);
	if (fd != -1) {
		n = FUNC12(fd, mbr, mbr_size);
		FUNC0(fd);
		if (n != mbr_size)
			FUNC2(1, "%s: short write", fname);
		return;
	}

	/*
	 * If we're called to write to a backup file, don't try to
	 * write through GEOM.
	 */
	if (flags != 0)
		FUNC1(1, "can't open file %s to write backup", fname);

	/* Try open it read only. */
	fd = FUNC10(fname, O_RDONLY);
	if (fd == -1) {
		FUNC11("error opening %s", fname);
		return;
	}

	pname = FUNC4(fd);
	if (pname == NULL) {
		FUNC11("error getting providername for %s", fname);
		return;
	}

	/* First check that GEOM_PART is available */
	if (FUNC9("PART") != 0) {
		grq = FUNC6();
		FUNC8(grq, "class", -1, "PART");
		FUNC8(grq, "arg0", -1, pname);
		FUNC8(grq, "verb", -1, "bootcode");
		FUNC8(grq, "bootcode", mbr_size, mbr);
		FUNC8(grq, "flags", -1, "C");
		if (disable_dsn)
			FUNC8(grq, "skip_dsn", sizeof(int),
			    &disable_dsn);
		errmsg = FUNC7(grq);
		if (errmsg != NULL && errmsg[0] != '\0')
			FUNC2(1, "GEOM_PART: write bootcode to %s failed: %s",
			    fname, errmsg);
		FUNC5(grq);
	} else
		FUNC2(1, "can't write MBR to %s", fname);
	FUNC3(pname);
}