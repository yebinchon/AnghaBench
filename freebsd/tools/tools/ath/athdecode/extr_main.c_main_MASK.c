#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stat {int st_size; } ;
struct athregrec {int op; } ;
struct TYPE_2__ {int chipnum; } ;

/* Variables and functions */
 void* MAP_FAILED ; 
 int MAP_NOCORE ; 
 int MAP_PRIVATE ; 
#define  OP_DEVICE 131 
#define  OP_MARK 130 
#define  OP_READ 129 
#define  OP_WRITE 128 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PROT_READ ; 
 scalar_t__ FUNC0 (struct athregrec*,struct athregrec*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 scalar_t__ FUNC2 (int,struct stat*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct athregrec*) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,struct athregrec*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,struct athregrec*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC9 (char) ; 
 TYPE_1__ state ; 
 int /*<<< orphan*/  stdout ; 

int
FUNC10(int argc, char *argv[])
{
	int fd, i, nrecs, same;
	struct stat sb;
	void *addr;
	const char *filename = "/tmp/ath_hal.log";
	struct athregrec *rprev;

	if (argc > 1)
		filename = argv[1];
	fd = FUNC5(filename, O_RDONLY);
	if (fd < 0)
		FUNC1(1, "open: %s", filename);
	if (FUNC2(fd, &sb) < 0)
		FUNC1(1, "fstat");
	addr = FUNC3(0, sb.st_size, PROT_READ, MAP_PRIVATE|MAP_NOCORE, fd, 0);
	if (addr == MAP_FAILED)
		FUNC1(1, "mmap");
	nrecs = sb.st_size / sizeof (struct athregrec);
	FUNC8("%u records", nrecs);
	rprev = NULL;
	same = 0;
	state.chipnum = 5210;
	for (i = 0; i < nrecs; i++) {
		struct athregrec *r = &((struct athregrec *) addr)[i];
		if (rprev && FUNC0(r, rprev, sizeof (*r)) == 0) {
			same++;
			continue;
		}
		if (same)
			FUNC8("\t\t+%u time%s", same, same == 1 ? "" : "s");
		switch (r->op) {
		case OP_DEVICE:
			FUNC4(r);
			break;
		case OP_READ:
		case OP_WRITE:
			FUNC7(stdout, i, r);
			break;
		case OP_MARK:
			FUNC6(stdout, i, r);
			break;
		}
		rprev = r;
		same = 0;
	}
	FUNC9('\n');
	return 0;
}