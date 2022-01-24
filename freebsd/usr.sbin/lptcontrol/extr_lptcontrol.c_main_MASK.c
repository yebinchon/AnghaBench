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

/* Variables and functions */
 char* DEFAULT_DEVICE ; 
 int DO_POLL ; 
 int IRQ_UNSPECIFIED ; 
 int /*<<< orphan*/  LPT_IRQ ; 
 int /*<<< orphan*/  O_WRONLY ; 
 int USE_EXT_MODE ; 
 int USE_IRQ ; 
 int USE_STD_MODE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (int,char**,char*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6 (int argc, char **argv)
{
	const char *device;
	int fd;
	int irq_status;
	int opt;

	device = DEFAULT_DEVICE;
	irq_status = IRQ_UNSPECIFIED;
	while ((opt = FUNC2(argc, argv, "d:eips")) != -1)
		switch (opt) {
		case 'd':
			device = optarg;
			break;
		case 'e':
			irq_status = USE_EXT_MODE;
			break;
		case 'i':
			irq_status = USE_IRQ;
			break;
		case 'p':
			irq_status = DO_POLL;
			break;
		case 's':
			irq_status = USE_STD_MODE;
			break;
		case '?':
		default:
			FUNC5();
			/* NOTREACHED */
		}
	argc -= optind;
	argv += optind;
	/* POLA: DTRT if -d was forgotten, but device name was specified. */
	if (argc == 1) {
		device = argv[0];
		--argc;
	}

	if (irq_status == IRQ_UNSPECIFIED || argc != 0)
		FUNC5();

	if ((fd = FUNC4(device, O_WRONLY)) < 0)
		FUNC1(1, "open");
	if (FUNC3(fd, LPT_IRQ, &irq_status) < 0)
		FUNC1(1, "ioctl");
	FUNC0(fd);

	return(0);
}