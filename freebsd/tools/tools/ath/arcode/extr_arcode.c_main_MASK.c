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
struct athregrec {int op; int reg; int val; } ;
typedef  int /*<<< orphan*/  a ;

/* Variables and functions */
#define  OP_DEVICE 131 
#define  OP_MARK 130 
#define  OP_READ 129 
#define  OP_WRITE 128 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct athregrec*) ; 
 int /*<<< orphan*/  FUNC3 (struct athregrec*) ; 
 int /*<<< orphan*/  FUNC4 (struct athregrec*) ; 
 int /*<<< orphan*/  FUNC5 (struct athregrec*) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int FUNC9 (int,struct athregrec*,int) ; 

int
FUNC10(int argc, const char *argv[])
{
	const char *file = argv[1];
	int fd;
	struct athregrec a;
	int r;

	if (argc < 2) {
		FUNC8("usage: %s <ahq log>\n", argv[0]);
		FUNC1(127);
	}

	fd = FUNC6(file, O_RDONLY);
	if (fd < 0) {
		FUNC7("open"); 
		FUNC1(127);
	}

	while (1) {
		r = FUNC9(fd, &a, sizeof(a));
		if (r != sizeof(a))
			break;
		switch (a.op) {
			case OP_READ:
				FUNC4(&a);
				break;
			case OP_WRITE:
				FUNC5(&a);
				break;
			case OP_DEVICE:
				FUNC2(&a);
				break;
			case OP_MARK:
				FUNC3(&a);
				break;
			default:
				FUNC8("op: %d; reg: 0x%x; val: 0x%x\n",
				    a.op, a.reg, a.val);
		}
	}
	FUNC0(fd);
}