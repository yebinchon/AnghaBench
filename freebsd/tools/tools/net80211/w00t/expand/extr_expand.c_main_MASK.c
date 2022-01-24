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
struct params {int rx; int tx; int tap; int /*<<< orphan*/  state; int /*<<< orphan*/  mac; int /*<<< orphan*/  ap; int /*<<< orphan*/  mcast; int /*<<< orphan*/  seq; } ;
typedef  int /*<<< orphan*/  p ;

/* Variables and functions */
 int /*<<< orphan*/  S_START ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct params*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (char*) ; 
 int FUNC7 (char*) ; 
 int FUNC8 (char*) ; 
 char* optarg ; 
 int /*<<< orphan*/  FUNC9 (struct params*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

int FUNC14(int argc, char *argv[])
{
	struct params p;
	char *iface = "wlan0";
	char *tap = "tap0";
	int ch;

	FUNC5(&p, 0, sizeof(p));
	FUNC4(p.mac, "\x00\x00\xde\xfa\xce\xd", 6);
	p.seq = FUNC3();
	FUNC4(p.mcast, "\x01\x00\x5e\x00\x00", 5);

	while ((ch = FUNC2(argc, argv, "hb:t:")) != -1) {
		switch (ch) {
		case 't':
			tap = optarg;
			break;

		case 'b':
			if (FUNC12(p.ap, optarg) == -1) {
				FUNC10("Can't parse BSSID\n");
				FUNC1(1);
			}
			break;

		case 'h':
		default:
			FUNC13(argv[0]);
			break;
		}
	}

	if ((p.rx = FUNC6(iface)) == -1)
		FUNC0(1, "open_rx()");
	if ((p.tx = FUNC8(iface)) == -1)
		FUNC0(1, "open_tx()");

	if ((p.tap = FUNC7(tap)) == -1)
		FUNC0(1, "open_tap()");
	if (FUNC11(tap, p.mac) == -1)
		FUNC0(1, "set_iface_mac()");

	p.state = S_START;
	while (1)
		FUNC9(&p);

	FUNC1(0);
}