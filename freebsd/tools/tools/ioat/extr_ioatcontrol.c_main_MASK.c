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
typedef  int /*<<< orphan*/  t ;
struct ioat_test {int raw_is_virtual; int verify; int raw_write; int zero_stats; int buffer_size; int chain_depth; int duration; int channel_index; void* transactions; int /*<<< orphan*/  testkind; void* coalesce_period; } ;

/* Variables and functions */
 int EX_OK ; 
 int EX_UNAVAILABLE ; 
 int EX_USAGE ; 
 int /*<<< orphan*/  IOAT_DMATEST ; 
 int /*<<< orphan*/  IOAT_TEST_DMA ; 
 int /*<<< orphan*/  IOAT_TEST_DMA_8K ; 
 int /*<<< orphan*/  IOAT_TEST_DMA_CRC ; 
 int /*<<< orphan*/  IOAT_TEST_DMA_CRC_COPY ; 
 int /*<<< orphan*/  IOAT_TEST_FILL ; 
 int /*<<< orphan*/  IOAT_TEST_MEMCPY ; 
 int /*<<< orphan*/  O_RDWR ; 
 void* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,struct ioat_test*) ; 
 int /*<<< orphan*/  FUNC4 (struct ioat_test*,int,char**) ; 
 int /*<<< orphan*/  FUNC5 (struct ioat_test*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int FUNC7 (struct ioat_test*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

int
FUNC10(int argc, char **argv)
{
	struct ioat_test t;
	int fd, ch;
	bool fflag, rflag, Eflag, eflag, mflag, xflag, Xflag;
	unsigned modeflags;

	FUNC5(&t, 0, sizeof(t));

	fflag = rflag = Eflag = eflag = mflag = xflag = Xflag = false;
	modeflags = 0;

	while ((ch = FUNC2(argc, argv, "c:EefmrvVwxXz")) != -1) {
		switch (ch) {
		case 'c':
			t.coalesce_period = FUNC0(optarg);
			break;
		case 'E':
			Eflag = true;
			modeflags++;
			break;
		case 'e':
			eflag = true;
			modeflags++;
			break;
		case 'f':
			fflag = true;
			modeflags++;
			break;
		case 'm':
			mflag = true;
			modeflags++;
			break;
		case 'r':
			rflag = true;
			modeflags++;
			break;
		case 'v':
			t.raw_is_virtual = true;
			break;
		case 'V':
			t.verify = true;
			break;
		case 'w':
			t.raw_write = true;
			break;
		case 'x':
			xflag = true;
			modeflags++;
			break;
		case 'X':
			Xflag = true;
			modeflags++;
			break;
		case 'z':
			t.zero_stats = true;
			break;
		default:
			FUNC9();
		}
	}
	argc -= optind;
	argv += optind;

	if (argc < 2)
		FUNC9();

	if (modeflags > 1) {
		FUNC8("Invalid: Cannot use >1 mode flag (-E, -e, -f, -m, -r, -x or -X)\n");
		FUNC9();
	}

	/* Defaults for optional args */
	t.buffer_size = 256 * 1024;
	t.chain_depth = 2;
	t.duration = 0;
	t.testkind = IOAT_TEST_DMA;

	if (fflag)
		t.testkind = IOAT_TEST_FILL;
	else if (Eflag || eflag) {
		t.testkind = IOAT_TEST_DMA_8K;
		t.buffer_size = 8 * 1024;
	} else if (mflag)
		t.testkind = IOAT_TEST_MEMCPY;
	else if (xflag)
		t.testkind = IOAT_TEST_DMA_CRC;
	else if (Xflag)
		t.testkind = IOAT_TEST_DMA_CRC_COPY;

	t.channel_index = FUNC0(argv[0]);
	if (t.channel_index > 8) {
		FUNC8("Channel number must be between 0 and 7.\n");
		return (EX_USAGE);
	}

	if (rflag) {
		FUNC4(&t, argc, argv);
		return (EX_OK);
	}

	t.transactions = FUNC0(argv[1]);

	if (argc >= 3) {
		t.buffer_size = FUNC0(argv[2]);
		if (t.buffer_size == 0) {
			FUNC8("Buffer size must be greater than zero\n");
			return (EX_USAGE);
		}
	}

	if (argc >= 4) {
		t.chain_depth = FUNC0(argv[3]);
		if (t.chain_depth < 1) {
			FUNC8("Chain length must be greater than zero\n");
			return (EX_USAGE);
		}
	}

	if (argc >= 5) {
		t.duration = FUNC0(argv[4]);
		if (t.duration < 1) {
			FUNC8("Duration must be greater than zero\n");
			return (EX_USAGE);
		}
	}

	fd = FUNC6("/dev/ioat_test", O_RDWR);
	if (fd < 0) {
		FUNC8("Cannot open /dev/ioat_test\n");
		return (EX_UNAVAILABLE);
	}

	(void)FUNC3(fd, IOAT_DMATEST, &t);
	FUNC1(fd);

	return (FUNC7(&t));
}