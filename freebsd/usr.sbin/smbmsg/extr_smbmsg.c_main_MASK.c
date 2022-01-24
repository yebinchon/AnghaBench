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
 int /*<<< orphan*/  EX_UNAVAILABLE ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int MAX_I2C_ADDR ; 
 int MIN_I2C_ADDR ; 
 int /*<<< orphan*/  O_RDWR ; 
 int SMB_MAXBLOCKSIZE ; 
 int cflag ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* dev ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int fd ; 
 char* fmt ; 
 int FUNC4 (char*) ; 
 int FUNC5 (int,char**,char*) ; 
 int iflag ; 
 int* obuf ; 
 int oflag ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int oword ; 
 int pflag ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int slave ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ wflag ; 

int
FUNC9(int argc, char **argv)
{
	int i, n, errs = 0;
	int savederrno;

	while ((i = FUNC5(argc, argv, "F:c:f:i:o:ps:w")) != -1)
		switch (i) {
		case 'F':
			fmt = optarg;
			break;

		case 'c':
			if ((cflag = FUNC4(optarg)) == -1)
				FUNC3(EX_USAGE, "Invalid number: %s", optarg);
			if (cflag < 0 || cflag >= 256)
				FUNC3(EX_USAGE,
				     "CMD out of range: %d",
				     cflag);
			break;

		case 'f':
			dev = optarg;
			break;

		case 'i':
			if ((iflag = FUNC4(optarg)) == -1)
				FUNC3(EX_USAGE, "Invalid number: %s", optarg);
			if (iflag < 0 || iflag > SMB_MAXBLOCKSIZE)
				FUNC3(EX_USAGE,
				     "# input bytes out of range: %d",
				     iflag);
			break;

		case 'o':
			if ((oflag = FUNC4(optarg)) == -1)
				FUNC3(EX_USAGE, "Invalid number: %s", optarg);
			if (oflag < 0 || oflag > SMB_MAXBLOCKSIZE)
				FUNC3(EX_USAGE,
				     "# output bytes out of range: %d",
				     oflag);
			break;

		case 'p':
			pflag = 1;
			break;

		case 's':
			if ((slave = FUNC4(optarg)) == -1)
				FUNC3(EX_USAGE, "Invalid number: %s", optarg);

			if (slave < MIN_I2C_ADDR || slave >= MAX_I2C_ADDR)
				FUNC3(EX_USAGE,
				     "Slave address out of range: %d",
				     slave);
			break;

		case 'w':
			wflag = 1;
			break;

		default:
			errs++;
		}
	argc -= optind;
	argv += optind;
	if (errs || (slave != -1 && pflag) || (slave == -1 && !pflag))
		FUNC8();
	if (wflag &&
	    !((iflag == 2 && oflag == -1) ||
	      (iflag == -1 && oflag == 2) ||
	      (iflag == 2 && oflag == 2)))
		FUNC3(EX_USAGE, "Illegal # IO bytes for word IO");
	if (!pflag && iflag == -1 && oflag == -1)
		FUNC3(EX_USAGE, "Nothing to do");
	if (pflag && (cflag != -1 || iflag != -1 || oflag != -1 || wflag != 0))
		FUNC8();
	if (oflag > 0) {
		if (oflag == 2 && wflag) {
			if (argc == 0)
				FUNC3(EX_USAGE, "Too few arguments for -o count");
			if ((n = FUNC4(*argv)) == -1)
				FUNC3(EX_USAGE, "Invalid number: %s", *argv);
			if (n < 0 || n >= 65535)
				FUNC3(EX_USAGE, "Value out of range: %d", n);
			oword = n;
			argc--;
			argv++;
		} else for (i = 0; i < oflag; i++, argv++, argc--) {
			if (argc == 0)
				FUNC3(EX_USAGE, "Too few arguments for -o count");
			if ((n = FUNC4(*argv)) == -1)
				FUNC3(EX_USAGE, "Invalid number: %s", *argv);
			if (n < 0 || n >= 256)
				FUNC3(EX_USAGE, "Value out of range: %d", n);
			obuf[i] = n;
		}
	}
	if (argc != 0)
		FUNC8();

	if ((fd = FUNC6(dev, O_RDWR)) == -1)
		FUNC2(EX_UNAVAILABLE, "Cannot open %s", dev);

	i = 0;
	if (pflag)
		FUNC7();
	else
		i = FUNC1();

	savederrno = errno;
	FUNC0(fd);
	errno = savederrno;

	if (i == -1)
		FUNC2(EX_UNAVAILABLE, "Error performing SMBus IO");
	else if (i == -2)
		FUNC3(EX_USAGE, "Invalid option combination");

	return (0);
}