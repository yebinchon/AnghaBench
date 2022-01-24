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
struct link {int op; void* id2; void* id1; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 void* FUNC0 (char const*) ; 
 scalar_t__ dev ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct link*) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char const**) ; 

int
FUNC7(int argc, const char* argv[])
{
	struct link l;
	char cmd;

	if (argc < 2) {
		FUNC6(argv);
		FUNC1(1);
	}

	dev = FUNC3("/dev/visctl", O_RDONLY);
		if (dev < 0) {
			FUNC4("error opening visctl cdev\n");
			FUNC1(1);
	}

	cmd = (char)*argv[1];

	switch (cmd) {
	case 'o':
		FUNC5(1);
		break;
	case 'c':
		FUNC5(0);
		break;
	case 'a':
		if (argc < 4) {
			FUNC6(argv);
			FUNC1(1);
		}
		l.op = 1;
		l.id1 = FUNC0(argv[2]);
		l.id2 = FUNC0(argv[3]);
		FUNC2(&l);
		break;
	case 'd':
		if (argc < 4) {
			FUNC6(argv);
			FUNC1(1);
		}
		l.op = 0;
		l.id1 = FUNC0(argv[2]);
		l.id2 = FUNC0(argv[3]);
		FUNC2(&l);
		break;
	default:
		FUNC4("wtap ioctl: unknown command '%c'\n", *argv[1]);
		FUNC1(1);
	}
	FUNC1(0);
}