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
struct params {int bint; int chan; int tx; int rx; int tap; int /*<<< orphan*/  mac; int /*<<< orphan*/  wep_len; int /*<<< orphan*/  wep_key; int /*<<< orphan*/ * ssid; int /*<<< orphan*/  blast; int /*<<< orphan*/  seq; } ;
typedef  int /*<<< orphan*/  p ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct params*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct params*) ; 
 int FUNC9 (char*) ; 
 int FUNC10 (char*) ; 
 int FUNC11 (char*) ; 
 char* optarg ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 

int FUNC19(int argc, char *argv[])
{
	char *iface = "wlan0";
	char *tap = "tap0";
	struct params p;
	int ch;

	/* default params */
	FUNC7(&p, 0, sizeof(p));
	FUNC6(p.mac, "\x00\x00\xde\xfa\xce\x0d", 6);
	FUNC16(p.ssid, "sorbo");
	p.bint = 500*1000;
	p.seq = FUNC4();
	if (FUNC5(&p.blast, NULL) == -1)
		FUNC1(1, "gettimeofday()");
	p.chan = 3;

	while ((ch = FUNC3(argc, argv, "hi:s:m:w:c:t:")) != -1) {
		switch (ch) {
		case 'i':
			iface = optarg;
			break;
		case 't':
			tap = optarg;
			break;

		case 'c':
			p.chan = FUNC0(optarg);
			break;

		case 's':
			FUNC17(p.ssid, optarg, sizeof(p.ssid)-1);
			p.ssid[sizeof(p.ssid)-1] = 0; 
			break;

		case 'm':
			FUNC14(p.mac, optarg);
			break;

		case 'w':
			if (FUNC15(p.wep_key, &p.wep_len, optarg)) {
				FUNC12("Error parsing WEP key\n");
				FUNC2(1);
			}
			break;

		case 'h':
		default:
			FUNC18(argv[0]);
			break;
		}
	}

	/* init */
	if ((p.tx = FUNC11(iface)) == -1)
		FUNC1(1, "open_tx()");
	if ((p.rx = FUNC9(iface)) == -1)
		FUNC1(1, "open_rx()");

	if ((p.tap = FUNC10(tap)) == -1)
		FUNC1(1, "open_tap()");
	if (FUNC13(tap, p.mac) == -1)
		FUNC1(1, "set_iface_mac()");

	while (1) {
		FUNC8(&p);
	}

	FUNC2(0);
}