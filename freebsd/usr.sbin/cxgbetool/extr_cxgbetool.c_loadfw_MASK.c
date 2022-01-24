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
 int /*<<< orphan*/  CHELSIO_T4_LOAD_FW ; 
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
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int
FUNC8(int argc, const char *argv[])
{
	int rc, fd;
	struct t4_data data = {0};
	const char *fname = argv[0];
	struct stat st = {0};

	if (argc != 1) {
		FUNC7("loadfw: incorrect number of arguments.");
		return (EINVAL);
	}

	fd = FUNC5(fname, O_RDONLY);
	if (fd < 0) {
		FUNC6("open(%s)", fname);
		return (errno);
	}

	if (FUNC2(fd, &st) < 0) {
		FUNC6("fstat");
		FUNC0(fd);
		return (errno);
	}

	data.len = st.st_size;
	data.data = FUNC3(0, data.len, PROT_READ, MAP_PRIVATE, fd, 0);
	if (data.data == MAP_FAILED) {
		FUNC6("mmap");
		FUNC0(fd);
		return (errno);
	}

	rc = FUNC1(CHELSIO_T4_LOAD_FW, &data);
	FUNC4(data.data, data.len);
	FUNC0(fd);
	return (rc);
}