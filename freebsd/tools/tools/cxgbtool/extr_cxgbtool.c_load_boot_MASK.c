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
struct ch_mem_range {int len; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHELSIO_LOAD_BOOT ; 
 int MAX_BOOT_IMAGE_SIZE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,struct ch_mem_range*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(int argc, char *argv[], int start_arg, const char *iff_name)
{
	int fd, len;
	struct ch_mem_range op;
	const char *fname = argv[start_arg];

	if (argc != start_arg + 1) return -1;

	fd = FUNC5(fname, O_RDONLY);
	if (fd < 0)
		FUNC2(1, "load boot image");

	op.buf = FUNC4(MAX_BOOT_IMAGE_SIZE + 1);
	if (!op.buf)
		FUNC2(1, "load boot image");

	len = FUNC6(fd, op.buf, MAX_BOOT_IMAGE_SIZE + 1);
	if (len < 0)
		FUNC2(1, "load boot image");
 	if (len > MAX_BOOT_IMAGE_SIZE)
		FUNC3(1, "boot image too large");

	op.len = len;

	if (FUNC1(iff_name, CHELSIO_LOAD_BOOT, &op) < 0)
		FUNC2(1, "load boot image");

	FUNC0(fd);
	return 0;
}