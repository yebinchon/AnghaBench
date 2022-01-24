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
struct params {char* fname; int prga_len; int rx; int tx; int tap; int /*<<< orphan*/  state; int /*<<< orphan*/  mac; int /*<<< orphan*/  port; int /*<<< orphan*/  dst; int /*<<< orphan*/  ap; int /*<<< orphan*/  rtr; int /*<<< orphan*/  src; int /*<<< orphan*/  seq; } ;
typedef  int /*<<< orphan*/  p ;

/* Variables and functions */
 int /*<<< orphan*/  S_START ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct params*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct params*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct params*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (char*) ; 
 int FUNC12 (char*) ; 
 int FUNC13 (char*) ; 
 char* optarg ; 
 int /*<<< orphan*/  FUNC14 (struct params*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int FUNC16 (char*,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 

int FUNC19(int argc, char *argv[])
{
	struct params p;
	char *iface = "wlan0";
	char *tap = "tap0";
	int ch;

	FUNC10(&p, 0, sizeof(p));
	FUNC9(p.mac, "\x00\x00\xde\xfa\xce\xd", 6);
	p.fname = "prga.log";
	p.seq = FUNC6();

	while ((ch = FUNC5(argc, argv, "hd:p:b:t:r:s:")) != -1) {
		switch (ch) {
		case 's':
			if (!FUNC7(optarg, &p.src)) {
				FUNC15("Can't parse src IP\n");
				FUNC4(1);
			}
			break;

		case 'r':
			if (FUNC17(p.rtr, optarg) == -1) {
				FUNC15("Can't parse rtr MAC\n");
				FUNC4(1);
			}
			break;

		case 't':
			tap = optarg;
			break;

		case 'b':
			if (FUNC17(p.ap, optarg) == -1) {
				FUNC15("Can't parse BSSID\n");
				FUNC4(1);
			}
			break;

		case 'd':
			if (!FUNC7(optarg, &p.dst)) {
				FUNC15("Can't parse IP\n");
				FUNC4(1);
			}
			break;

		case 'p':
			p.port = FUNC1(optarg);
			break;

		case 'h':
		default:
			FUNC18(argv[0]);
			break;
		}
	}

	FUNC8(&p);
	FUNC0(p.prga_len > 60);

	if ((p.rx = FUNC11(iface)) == -1)
		FUNC3(1, "open_rx()");
	if ((p.tx = FUNC13(iface)) == -1)
		FUNC3(1, "open_tx()");

	if ((p.tap = FUNC12(tap)) == -1)
		FUNC3(1, "open_tap()");
	if (FUNC16(tap, p.mac) == -1)
		FUNC3(1, "set_iface_mac()");

	if (FUNC2(&p) == -1)
		FUNC3(1, "connect_buddy()");

	p.state = S_START;
	while (1)
		FUNC14(&p);

	FUNC4(0);
}