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
typedef  scalar_t__ report_desc_t ;
typedef  int /*<<< orphan*/  devnam ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int,char**,char*) ; 
 int hexdump ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char) ; 
 int /*<<< orphan*/  noname ; 
 int FUNC10 (char*,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int,int,char**) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  verbose ; 
 int wflag ; 
 int /*<<< orphan*/  FUNC15 (int,scalar_t__) ; 
 int zflag ; 

int
FUNC16(int argc, char **argv)
{
	report_desc_t r;
	char *table = 0;
	char devnam[100], *dev = NULL;
	int f;
	int all = 0;
	int ch;
	int repdump = 0;
	int loop = 0;

	while ((ch = FUNC5(argc, argv, "af:lnrt:vwxz")) != -1) {
		switch(ch) {
		case 'a':
			all++;
			break;
		case 'f':
			dev = optarg;
			break;
		case 'l':
			loop ^= 1;
			break;
		case 'n':
			noname++;
			break;
		case 'r':
			repdump++;
			break;
		case 't':
			table = optarg;
			break;
		case 'v':
			verbose++;
			break;
		case 'w':
			wflag = 1;
			break;
		case 'x':
			hexdump = 1;
			break;
		case 'z':
			zflag = 1;
			break;
		case '?':
		default:
			FUNC14();
		}
	}
	argc -= optind;
	argv += optind;
	if (dev == NULL)
		FUNC14();

	if (argc == 0 && !all && !repdump)
		FUNC14();

	if (dev[0] != '/') {
		if (FUNC9(dev[0]))
			FUNC13(devnam, sizeof(devnam), "/dev/uhid%s", dev);
		else
			FUNC13(devnam, sizeof(devnam), "/dev/%s", dev);
		dev = devnam;
	}

	FUNC8(table);

	f = FUNC10(dev, O_RDWR);
	if (f < 0)
		FUNC2(1, "%s", dev);

	r = FUNC7(f);
	if (r == 0)
		FUNC3(1, "USB_GET_REPORT_DESC");

	if (repdump) {
		FUNC12("Report descriptor:\n");
		FUNC1(r);
	}
	if (argc != 0 || all) {
		FUNC11(r, all, argc, argv);
		if (wflag)
			FUNC15(f, r);
		else
			FUNC0(f, r, loop);
	}

	FUNC6(r);
	FUNC4(0);
}