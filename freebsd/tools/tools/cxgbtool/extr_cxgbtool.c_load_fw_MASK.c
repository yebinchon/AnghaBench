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
typedef  int /*<<< orphan*/  op ;

/* Variables and functions */
 int /*<<< orphan*/  CHELSIO_LOAD_FW ; 
 int MAX_FW_IMAGE_SIZE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (struct ch_mem_range*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ,struct ch_mem_range*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC8(int argc, char *argv[], int start_arg, const char *iff_name)
{
	int fd, len;
	struct ch_mem_range op;
	const char *fname = argv[start_arg];

	if (argc != start_arg + 1) return -1;

	fd = FUNC6(fname, O_RDONLY);
	if (fd < 0)
		FUNC3(1, "load firmware");

	FUNC0(&op, sizeof(op));
	op.buf = FUNC5(MAX_FW_IMAGE_SIZE + 1);
	if (!op.buf)
		FUNC3(1, "load firmware");

	len = FUNC7(fd, op.buf, MAX_FW_IMAGE_SIZE + 1);
	if (len < 0)
		FUNC3(1, "load firmware");
 	if (len > MAX_FW_IMAGE_SIZE)
		FUNC4(1, "FW image too large");

	op.len = len;
	if (FUNC2(iff_name, CHELSIO_LOAD_FW, &op) < 0)
		FUNC3(1, "load firmware");

	FUNC1(fd);
	return 0;
}