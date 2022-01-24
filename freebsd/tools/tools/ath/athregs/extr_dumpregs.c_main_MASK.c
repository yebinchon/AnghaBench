#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
typedef  int u_int ;
struct ath_driver_req {int dummy; } ;
struct ath_diag {int ad_id; int ad_out_size; int ad_in_size; int /*<<< orphan*/ * ad_out_data; int /*<<< orphan*/  ad_name; scalar_t__ ad_in_data; } ;
typedef  void* caddr_t ;
struct TYPE_3__ {int /*<<< orphan*/  ah_phyRev; int /*<<< orphan*/  ah_macRev; int /*<<< orphan*/  ah_macVersion; int /*<<< orphan*/  ah_devid; } ;
struct TYPE_4__ {int show_addrs; int show_names; int /*<<< orphan*/ * regdata; TYPE_1__ revs; } ;
typedef  int /*<<< orphan*/  HAL_REGRANGE ;

/* Variables and functions */
 char* ATH_DEFAULT ; 
 int ATH_DIAG_DYN ; 
 int ATH_DIAG_IN ; 
 int DUMP_ALL ; 
 int DUMP_BASEBAND ; 
 int DUMP_BASIC ; 
 int DUMP_DCU ; 
 int DUMP_INTERRUPT ; 
 int DUMP_KEYCACHE ; 
 int DUMP_QCU ; 
 int DUMP_XR ; 
 int HAL_DIAG_REGS ; 
 int HAL_DIAG_REVS ; 
 int /*<<< orphan*/  SIOCGATHDIAG ; 
 int /*<<< orphan*/  FUNC0 (struct ath_driver_req*) ; 
 scalar_t__ FUNC1 (struct ath_driver_req*,int /*<<< orphan*/ ,struct ath_diag*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_driver_req*) ; 
 scalar_t__ FUNC3 (struct ath_driver_req*,char const*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC12 (struct ath_diag*,int) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC17 (char*) ; 
 int FUNC18 (int,char**,char*) ; 
 scalar_t__ FUNC19 (int) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC20 (char) ; 
 TYPE_2__ state ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC22 () ; 

int
FUNC23(int argc, char *argv[])
{
	struct ath_diag atd;
	const char *ifname;
	u_int32_t *data;
	u_int32_t *dp, *ep;
	int what, c, i;
	struct ath_driver_req req;

	FUNC2(&req);

	ifname = FUNC17("ATH");
	if (!ifname)
		ifname = ATH_DEFAULT;

	what = 0;
	state.show_addrs = 0;
	state.show_names = 1;
	while ((c = FUNC18(argc, argv, "i:aAbdkmNqxz")) != -1)
		switch (c) {
		case 'a':
			what |= DUMP_ALL;
			break;
		case 'A':
			state.show_addrs = 1;
			break;
		case 'b':
			what |= DUMP_BASEBAND;
			break;
		case 'd':
			what |= DUMP_DCU;
			break;
		case 'k':
			what |= DUMP_KEYCACHE;
			break;
		case 'i':
			ifname = optarg;
			break;
		case 'm':
			what |= DUMP_BASIC;
			break;
		case 'N':
			state.show_names = 0;
			break;
		case 'q':
			what |= DUMP_QCU;
			break;
		case 'x':
			what |= DUMP_XR;
			break;
		case 'z':
			what |= DUMP_INTERRUPT;
			break;
		default:
			FUNC22();
			/*NOTREACHED*/
		}

	/* Initialise the driver interface */
	if (FUNC3(&req, ifname) < 0) {
		FUNC15(127);
	}

	/*
	 * Whilst we're doing the ath_diag pieces, we have to set this
	 * ourselves.
	 */
	FUNC21(atd.ad_name, ifname, sizeof (atd.ad_name));

	argc -= optind;
	argv += optind;
	if (what == 0)
		what = DUMP_BASIC;

	atd.ad_id = HAL_DIAG_REVS;
	atd.ad_out_data = (caddr_t) &state.revs;
	atd.ad_out_size = sizeof(state.revs);

	if (FUNC1(&req, SIOCGATHDIAG, &atd) < 0)
		FUNC13(1, "%s", atd.ad_name);

	if (FUNC12(&atd, what) == 0)
		FUNC14(-1, "no registers are known for this part "
		    "(devid 0x%x mac %d.%d phy %d)", state.revs.ah_devid,
		    state.revs.ah_macVersion, state.revs.ah_macRev,
		    state.revs.ah_phyRev);

	atd.ad_out_size = FUNC11((HAL_REGRANGE *) atd.ad_in_data,
		atd.ad_in_size / sizeof(HAL_REGRANGE));
	atd.ad_out_data = (caddr_t) FUNC19(atd.ad_out_size);
	if (atd.ad_out_data == NULL) {
		FUNC16(stderr, "Cannot malloc output buffer, size %u\n",
			atd.ad_out_size);
		FUNC15(-1);
	}
	atd.ad_id = HAL_DIAG_REGS | ATH_DIAG_IN | ATH_DIAG_DYN;

	if (FUNC1(&req, SIOCGATHDIAG, &atd) < 0)
		FUNC13(1, "%s", atd.ad_name);

	/*
	 * Expand register data into global space that can be
	 * indexed directly by register offset.
	 */
	dp = (u_int32_t *)atd.ad_out_data;
	ep = (u_int32_t *)(atd.ad_out_data + atd.ad_out_size);
	while (dp < ep) {
		u_int r = dp[0];	/* start of range */
		u_int e = dp[1];	/* end of range */
		dp++;
		dp++;
		/* convert offsets to indices */
		r >>= 2; e >>= 2;
		do {
			if (dp >= ep) {
				FUNC16(stderr, "Warning, botched return data;"
					"register at offset 0x%x not present\n",
					r << 2);
				break;
			}
			state.regdata[r++] = *dp++;
		} while (r <= e);
	} 

	if (what & DUMP_BASIC)
		FUNC10(stdout, DUMP_BASIC);
	if ((what & DUMP_INTERRUPT) && FUNC4(DUMP_INTERRUPT)) {
		if (what & DUMP_BASIC)
			FUNC20('\n');
		if (state.show_addrs)
			FUNC10(stdout, DUMP_INTERRUPT);
		else
			FUNC7(stdout, what);
	}
	if ((what & DUMP_QCU) && FUNC4(DUMP_QCU)) {
		if (what & (DUMP_BASIC|DUMP_INTERRUPT))
			FUNC20('\n');
		if (state.show_addrs)
			FUNC10(stdout, DUMP_QCU);
		else
			FUNC9(stdout, what);
	}
	if ((what & DUMP_DCU) && FUNC4(DUMP_DCU)) {
		if (what & (DUMP_BASIC|DUMP_INTERRUPT|DUMP_QCU))
			FUNC20('\n');
		if (state.show_addrs)
			FUNC10(stdout, DUMP_DCU);
		else
			FUNC6(stdout, what);
	}
	if (what & DUMP_KEYCACHE) {
		if (state.show_addrs) {
			if (what & (DUMP_BASIC|DUMP_INTERRUPT|DUMP_QCU|DUMP_DCU))
				FUNC20('\n');
			FUNC10(stdout, DUMP_KEYCACHE);
		} else
			FUNC8(stdout, 128);
	}
	if (what & DUMP_BASEBAND) {
		if (what &~ DUMP_BASEBAND)
			FUNC16(stdout, "\n");
		FUNC5(stdout, what);
	}
	FUNC0(&req);
	return 0;
}