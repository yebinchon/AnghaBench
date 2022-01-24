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
struct t4_bootrom {int pf_offset; long pfidx_addr; scalar_t__ data; int /*<<< orphan*/  len; int /*<<< orphan*/  member_0; } ;
struct stat {int /*<<< orphan*/  st_size; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHELSIO_T4_LOAD_BOOT ; 
 int EINVAL ; 
 scalar_t__ MAP_FAILED ; 
 int /*<<< orphan*/  MAP_PRIVATE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct t4_bootrom*) ; 
 int errno ; 
 scalar_t__ FUNC2 (int,struct stat*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (char const*,long*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static int
FUNC10(int argc, const char *argv[])
{
	int rc, fd;
	long l;
	char *p;
	struct t4_bootrom br = {0};
	const char *fname = argv[0];
	struct stat st = {0};

	if (argc == 1) {
		br.pf_offset = 0;
		br.pfidx_addr = 0;
	} else if (argc == 3) {
		if (!FUNC7(argv[1], "pf"))
			br.pf_offset = 0;
		else if (!FUNC7(argv[1], "offset"))
			br.pf_offset = 1;
		else
			return (EINVAL);

		p = FUNC6(argv[2], &l, NULL);
		if (*p)
			return (EINVAL);
		br.pfidx_addr = l;
	} else {
		FUNC9("loadboot: incorrect number of arguments.");
		return (EINVAL);
	}

	if (FUNC7(fname, "clear") == 0)
		return (FUNC1(CHELSIO_T4_LOAD_BOOT, &br));

	fd = FUNC5(fname, O_RDONLY);
	if (fd < 0) {
		FUNC8("open(%s)", fname);
		return (errno);
	}

	if (FUNC2(fd, &st) < 0) {
		FUNC8("fstat");
		FUNC0(fd);
		return (errno);
	}

	br.len = st.st_size;
	br.data = FUNC3(0, br.len, PROT_READ, MAP_PRIVATE, fd, 0);
	if (br.data == MAP_FAILED) {
		FUNC8("mmap");
		FUNC0(fd);
		return (errno);
	}

	rc = FUNC1(CHELSIO_T4_LOAD_BOOT, &br);
	FUNC4(br.data, br.len);
	FUNC0(fd);
	return (rc);
}