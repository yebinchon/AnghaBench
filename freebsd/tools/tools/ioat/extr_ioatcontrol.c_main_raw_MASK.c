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
struct ioat_test {int transactions; int chain_depth; int buffer_size; scalar_t__ raw_target; int /*<<< orphan*/  testkind; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_UNAVAILABLE ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  IOAT_DMATEST ; 
 int /*<<< orphan*/  IOAT_TEST_RAW_DMA ; 
 int /*<<< orphan*/  O_RDWR ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,struct ioat_test*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ioat_test*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct ioat_test *t, int argc, char **argv)
{
	int fd;

	/* Raw DMA defaults */
	t->testkind = IOAT_TEST_RAW_DMA;
	t->transactions = 1;
	t->chain_depth = 1;
	t->buffer_size = 4 * 1024;

	t->raw_target = FUNC7(argv[1], NULL, 0);
	if (t->raw_target == 0) {
		FUNC6("Target shoudln't be NULL\n");
		FUNC2(EX_USAGE);
	}

	if (argc >= 3) {
		t->buffer_size = FUNC0(argv[2]);
		if (t->buffer_size == 0) {
			FUNC6("Buffer size must be greater than zero\n");
			FUNC2(EX_USAGE);
		}
	}

	fd = FUNC4("/dev/ioat_test", O_RDWR);
	if (fd < 0) {
		FUNC6("Cannot open /dev/ioat_test\n");
		FUNC2(EX_UNAVAILABLE);
	}

	(void)FUNC3(fd, IOAT_DMATEST, t);
	FUNC1(fd);

	FUNC2(FUNC5(t));
}