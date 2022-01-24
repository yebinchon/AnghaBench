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
typedef  int /*<<< orphan*/  useconds_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct ether_addr {int dummy; } ;
struct TYPE_2__ {char* buf; int /*<<< orphan*/  len; } ;
struct ath_ratestats {scalar_t__ s; TYPE_1__ re; } ;
typedef  int /*<<< orphan*/  r ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 char* ATH_DEFAULT ; 
 int /*<<< orphan*/  COLOR_BLUE ; 
 int /*<<< orphan*/  COLOR_CYAN ; 
 int /*<<< orphan*/  COLOR_MAGENTA ; 
 int /*<<< orphan*/  COLOR_RED ; 
 int /*<<< orphan*/  COLOR_YELLOW ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  STATS_BUF_SIZE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct ath_ratestats*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_ratestats*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int do_loop ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char*) ; 
 struct ether_addr* FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_ratestats*,struct ether_addr*,int /*<<< orphan*/ *) ; 
 char* FUNC9 (char*) ; 
 int FUNC10 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ,short) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 char* optarg ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,short*,short*) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (char*,char*,float*) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  stdscr ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 

int
FUNC27(int argc, char *argv[])
{
	char const *ifname = NULL, *macaddr = NULL;
	int c;
	int do_all = 0;
	struct ether_addr *e;
	struct ath_ratestats r;
	uint8_t *buf;
	useconds_t sleep_period;
	float f;
	short cf, cb;

	ifname = FUNC9("ATH");
	if (ifname == NULL)
		ifname = ATH_DEFAULT;

	while ((c = FUNC10(argc, argv, "ahi:m:s:")) != -1) {
		switch (c) {
		case 'a':
			do_all = 1;
			break;
		case 'i':
			ifname = optarg;
			break;
		case 'm':
			macaddr = optarg;
			break;
		case 's':
			FUNC23(optarg, "%f", &f);
			do_loop = 1;
			sleep_period = (useconds_t) (f * 1000000.0);
			break;
		default:
			FUNC5(1,
			    "usage: %s [-h] [-i ifname] [-a] [-m macaddr] [-s sleep period]\n",
			    argv[0]);
			/* NOTREACHED */
		}
	}

	if (macaddr == NULL) {
		FUNC5(1, "%s: macaddress wasn't supplied and no -a given\n",
		    argv[0]);
		/* NOTREACHED */
	}
	e = FUNC6(macaddr);
	if (e == NULL)
		FUNC4(1, "ether_aton");

	FUNC1(&r, sizeof(r));

	/*
	 * Persistent buffer for each lookup
	 */
	buf = FUNC15(STATS_BUF_SIZE);
	if (buf == NULL)
		FUNC4(1, "calloc");

	r.re.buf = (char *) buf;
	r.re.len = STATS_BUF_SIZE;

	r.s = FUNC22(AF_INET, SOCK_DGRAM, 0);
	if (r.s < 0) {
		FUNC4(1, "socket");
	}

	/* XXX error check */
	FUNC0(&r, ifname);

	if (do_loop) {
		FUNC12();
		FUNC24();
		FUNC25();
		FUNC20(0, &cf, &cb);
		/* Error - medium */
		FUNC11(1, COLOR_YELLOW, cb);
		/* Error - high */
		FUNC11(2, COLOR_RED, cb);
		/* Sample */
		FUNC11(3, COLOR_CYAN, cb);
		/* 250 byte frames */
		FUNC11(4, COLOR_BLUE, cb);
		/* 1600 byte frames */
		FUNC11(5, COLOR_MAGENTA, cb);
		FUNC2();
		FUNC18();
		FUNC19();
		FUNC17(stdscr, 1);
		FUNC13(stdscr, FALSE);
		FUNC14(stdscr, TRUE);

		while (1) {
			FUNC3();
			FUNC16(0, 0);
			FUNC8(&r, e, buf);
			FUNC21();
			FUNC26(sleep_period);
		}
	} else
		FUNC8(&r, e, buf);

	FUNC7(0);
}