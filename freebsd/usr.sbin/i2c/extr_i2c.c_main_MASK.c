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
struct options {int addr_set; int off; int verbose; char dir; int width; int count; int binary; int scan; int skip; int reset; scalar_t__ mode; int addr; } ;
struct iiccmd {int dummy; } ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 int EOF ; 
 char* I2C_DEV ; 
 void* I2C_MODE_NONE ; 
 scalar_t__ I2C_MODE_NOTSET ; 
 scalar_t__ I2C_MODE_REPEATED_START ; 
 void* I2C_MODE_STOP_START ; 
 scalar_t__ I2C_MODE_TRANSFER ; 
 void* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 () ; 
 int FUNC6 (int,char**,char*) ; 
 int FUNC7 (char*,struct options,char*) ; 
 int FUNC8 (char*,struct options,char*) ; 
 int FUNC9 (char*,struct options,char*) ; 
 char* FUNC10 (int) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC11 (struct iiccmd,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct iiccmd,char*,int,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int FUNC14 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 () ; 

int
FUNC16(int argc, char** argv)
{
	struct iiccmd cmd;
	struct options i2c_opt;
	char *dev, *skip_addr, *i2c_buf;
	int error, chunk_size, i, j, ch;

	errno = 0;
	error = 0;

	/* Line-break the output every chunk_size bytes */
	chunk_size = 16;

	dev = I2C_DEV;

	/* Default values */
	i2c_opt.addr_set = 0;
	i2c_opt.off = 0;
	i2c_opt.verbose = 0;
	i2c_opt.dir = 'r';	/* direction = read */
	i2c_opt.width = 8;
	i2c_opt.count = 1;
	i2c_opt.binary = 0;	/* ASCII text output */
	i2c_opt.scan = 0;	/* no bus scan */
	i2c_opt.skip = 0;	/* scan all addresses */
	i2c_opt.reset = 0;	/* no bus reset */
	i2c_opt.mode = I2C_MODE_NOTSET;

	while ((ch = FUNC6(argc, argv, "a:f:d:o:w:c:m:n:sbvrh")) != -1) {
		switch(ch) {
		case 'a':
			i2c_opt.addr = (FUNC14(optarg, 0, 16) << 1);
			if (i2c_opt.addr == 0 && errno == EINVAL)
				i2c_opt.addr_set = 0;
			else
				i2c_opt.addr_set = 1;
			break;
		case 'f':
			dev = optarg;
			break;
		case 'd':
			i2c_opt.dir = optarg[0];
			break;
		case 'o':
			i2c_opt.off = FUNC14(optarg, 0, 16);
			if (i2c_opt.off == 0 && errno == EINVAL)
				error = 1;
			break;
		case 'w':
			i2c_opt.width = FUNC0(optarg);
			break;
		case 'c':
			i2c_opt.count = FUNC0(optarg);
			break;
		case 'm':
			if (!FUNC13(optarg, "no"))
				i2c_opt.mode = I2C_MODE_NONE;
			else if (!FUNC13(optarg, "ss"))
				i2c_opt.mode = I2C_MODE_STOP_START;
			else if (!FUNC13(optarg, "rs"))
				i2c_opt.mode = I2C_MODE_REPEATED_START;
			else if (!FUNC13(optarg, "tr"))
				i2c_opt.mode = I2C_MODE_TRANSFER;
			else
				FUNC15();
			break;
		case 'n':
			i2c_opt.skip = 1;
			skip_addr = optarg;
			break;
		case 's':
			i2c_opt.scan = 1;
			break;
		case 'b':
			i2c_opt.binary = 1;
			break;
		case 'v':
			i2c_opt.verbose = 1;
			break;
		case 'r':
			i2c_opt.reset = 1;
			break;
		case 'h':
		default:
			FUNC15();
		}
	}
	argc -= optind;
	argv += optind;

	/* Set default mode if option -m is not specified */
	if (i2c_opt.mode == I2C_MODE_NOTSET) {
		if (i2c_opt.dir == 'r')
			i2c_opt.mode = I2C_MODE_STOP_START;
		else if (i2c_opt.dir == 'w')
			i2c_opt.mode = I2C_MODE_NONE;
	}

	/* Basic sanity check of command line arguments */
	if (i2c_opt.scan) {
		if (i2c_opt.addr_set)
			FUNC15();
	} else if (i2c_opt.reset) {
		if (i2c_opt.addr_set)
			FUNC15();
	} else if (error) {
		FUNC15();
	} else if ((i2c_opt.dir == 'r' || i2c_opt.dir == 'w')) {
		if ((i2c_opt.addr_set == 0) ||
		    !(i2c_opt.width == 0 || i2c_opt.width == 8 ||
		    i2c_opt.width == 16))
		FUNC15();
	}

	if (i2c_opt.verbose)
		FUNC3(stderr, "dev: %s, addr: 0x%x, r/w: %c, "
		    "offset: 0x%02x, width: %u, count: %u\n", dev,
		    i2c_opt.addr >> 1, i2c_opt.dir, i2c_opt.off,
		    i2c_opt.width, i2c_opt.count);

	if (i2c_opt.scan)
		FUNC2(FUNC12(cmd, dev, i2c_opt.skip, skip_addr));

	if (i2c_opt.reset)
		FUNC2(FUNC11(cmd, dev));

	i2c_buf = FUNC10(i2c_opt.count);
	if (i2c_buf == NULL)
		FUNC1(1, "data malloc");

	/*
	 * For a write, read the data to be written to the chip from stdin.
	 */
	if (i2c_opt.dir == 'w') {
		if (i2c_opt.verbose && !i2c_opt.binary)
			FUNC3(stderr, "Enter %u bytes of data: ",
			    i2c_opt.count);
		for (i = 0; i < i2c_opt.count; i++) {
			ch = FUNC5();
			if (ch == EOF) {
				FUNC4(i2c_buf);
				FUNC1(1, "not enough data, exiting\n");
			}
			i2c_buf[i] = ch;
		}
	}

	if (i2c_opt.mode == I2C_MODE_TRANSFER)
		error = FUNC7(dev, i2c_opt, i2c_buf);
	else if (i2c_opt.dir == 'w')
		error = FUNC9(dev, i2c_opt, i2c_buf);
	else
		error = FUNC8(dev, i2c_opt, i2c_buf);

	if (error != 0) {
		FUNC4(i2c_buf);
		return (1);
	}

	if (i2c_opt.verbose)
		FUNC3(stderr, "\nData %s (hex):\n", i2c_opt.dir == 'r' ?
		    "read" : "written");

	i = 0;
	j = 0;
	while (i < i2c_opt.count) {
		if (i2c_opt.verbose || (i2c_opt.dir == 'r' &&
		    !i2c_opt.binary))
			FUNC3 (stderr, "%02hhx ", i2c_buf[i++]);

		if (i2c_opt.dir == 'r' && i2c_opt.binary) {
			FUNC3(stdout, "%c", i2c_buf[j++]);
			if(!i2c_opt.verbose)
				i++;
		}
		if (!i2c_opt.verbose && (i2c_opt.dir == 'w'))
			break;
		if ((i % chunk_size) == 0)
			FUNC3(stderr, "\n");
	}
	if ((i % chunk_size) != 0)
		FUNC3(stderr, "\n");

	FUNC4(i2c_buf);
	return (0);
}