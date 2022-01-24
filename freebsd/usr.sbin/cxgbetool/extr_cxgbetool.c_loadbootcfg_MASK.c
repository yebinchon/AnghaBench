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
struct t4_data {scalar_t__ data; int /*<<< orphan*/  len; int /*<<< orphan*/  member_0; } ;
struct stat {int /*<<< orphan*/  st_size; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHELSIO_T4_LOAD_BOOTCFG ; 
 int EINVAL ; 
 scalar_t__ MAP_FAILED ; 
 int /*<<< orphan*/  MAP_PRIVATE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct t4_data*) ; 
 int errno ; 
 scalar_t__ FUNC2 (int,struct stat*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int
FUNC9(int argc, const char *argv[])
{
	int rc, fd;
	struct t4_data bc = {0};
	const char *fname = argv[0];
	struct stat st = {0};

	if (argc != 1) {
		FUNC8("loadbootcfg: incorrect number of arguments.");
		return (EINVAL);
	}

	if (FUNC6(fname, "clear") == 0)
		return (FUNC1(CHELSIO_T4_LOAD_BOOTCFG, &bc));

	fd = FUNC5(fname, O_RDONLY);
	if (fd < 0) {
		FUNC7("open(%s)", fname);
		return (errno);
	}

	if (FUNC2(fd, &st) < 0) {
		FUNC7("fstat");
		FUNC0(fd);
		return (errno);
	}

	bc.len = st.st_size;
	bc.data = FUNC3(0, bc.len, PROT_READ, MAP_PRIVATE, fd, 0);
	if (bc.data == MAP_FAILED) {
		FUNC7("mmap");
		FUNC0(fd);
		return (errno);
	}

	rc = FUNC1(CHELSIO_T4_LOAD_BOOTCFG, &bc);
	FUNC4(bc.data, bc.len);
	FUNC0(fd);
	return (rc);
}