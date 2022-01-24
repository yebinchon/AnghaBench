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
struct params {char* fname; int mtu; int rx; int tx; int tap; int prga_len; void* state; int /*<<< orphan*/  mac; int /*<<< orphan*/  ap; int /*<<< orphan*/  seq; } ;
typedef  int /*<<< orphan*/  p ;

/* Variables and functions */
 void* S_START ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct params*) ; 
 int /*<<< orphan*/  FUNC3 (struct params*) ; 
 int FUNC4 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct params*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct params*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (char*) ; 
 int FUNC10 (char*) ; 
 int FUNC11 (char*) ; 
 char* optarg ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (struct params*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

int FUNC17(int argc, char *argv[])
{
	struct params p;
	char *iface = "wlan0";
	char *tap = "tap0";
	int ch;

	FUNC8(&p, 0, sizeof(p));
	p.fname = "prga.log";
	FUNC7(p.mac, "\x00\x00\xde\xfa\xce\x0d", 6);
	p.state = S_START;
	p.mtu = 1500;
	p.seq = FUNC5();

	while ((ch = FUNC4(argc, argv, "hb:t:")) != -1) {
		switch (ch) {
		case 'b':
			if (FUNC14(p.ap, optarg) == -1) {
				FUNC12("Can't parse BSSID\n");
				FUNC1(1);
			}
			break;

		case 't':
			tap = optarg;
			break;

		case 'h':
		default:
			FUNC16(argv[0]);
			break;
		}
	}

	/* init */
	if ((p.rx = FUNC9(iface)) == -1)
		FUNC0(1, "open_rx()");
	if ((p.tx = FUNC11(iface)) == -1)
		FUNC0(1, "open_tx()");

	if ((p.tap = FUNC10(tap)) == -1)
		FUNC0(1, "open_tap()");
	if (FUNC13(tap, p.mac) == -1)
		FUNC0(1, "set_iface_mac()");

	FUNC12("Obtaining PRGA\n");
	/* make sure we got some prga */
	FUNC6(&p);

	while (p.prga_len == 0)
		FUNC3(&p);

	/* lets grab some more */
	while (p.prga_len < p.mtu)
		FUNC2(&p);

	/* transmit */
	p.state = S_START;
	while (1)
		FUNC15(&p);

	FUNC1(0);
}