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
struct ipmi_softc {int (* ipmi_startup ) (struct ipmi_softc*) ;int ipmi_dev_support; void* ipmi_power_cycle_tag; int /*<<< orphan*/  ipmi_watchdog_pretimeout; int /*<<< orphan*/  ipmi_watchdog_actions; scalar_t__ ipmi_watchdog_active; TYPE_1__* ipmi_cdev; void* ipmi_shutdown_tag; void* ipmi_watchdog_tag; scalar_t__ ipmi_driver_requests_polled; int /*<<< orphan*/  ipmi_pending_requests; int /*<<< orphan*/  ipmi_request_added; int /*<<< orphan*/  ipmi_io_lock; int /*<<< orphan*/  ipmi_requests_lock; int /*<<< orphan*/  ipmi_dev; int /*<<< orphan*/  ipmi_ich; } ;
struct ipmi_request {int ir_compcode; int ir_replylen; int* ir_reply; int* ir_request; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {struct ipmi_softc* si_drv1; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ipmi_softc*,scalar_t__) ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  GID_OPERATOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IPMI_ADS_CHASSIS ; 
 int /*<<< orphan*/  FUNC2 (struct ipmi_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IPMI_APP_REQUEST ; 
 int /*<<< orphan*/  IPMI_CLEAR_FLAGS ; 
 int /*<<< orphan*/  IPMI_GET_CHANNEL_INFO ; 
 int /*<<< orphan*/  IPMI_GET_DEVICE_ID ; 
 int /*<<< orphan*/  IPMI_GET_WDOG ; 
 int /*<<< orphan*/  FUNC3 (struct ipmi_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPMI_SET_WD_ACTION_POWER_CYCLE ; 
 int /*<<< orphan*/  MAX_TIMEOUT ; 
 int /*<<< orphan*/  MTX_DEF ; 
 scalar_t__ SHUTDOWN_PRI_LAST ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ipmi_cdevsw ; 
 int /*<<< orphan*/  ipmi_power_cycle ; 
 scalar_t__ FUNC9 (struct ipmi_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct ipmi_softc*,scalar_t__) ; 
 int /*<<< orphan*/  ipmi_shutdown_event ; 
 int FUNC11 (struct ipmi_softc*,struct ipmi_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipmi_wd_event ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ on ; 
 int /*<<< orphan*/  shutdown_final ; 
 int /*<<< orphan*/  shutdown_pre_sync ; 
 int FUNC14 (struct ipmi_softc*) ; 
 int /*<<< orphan*/  watchdog_list ; 
 int /*<<< orphan*/  wd_pretimeout_countdown ; 
 scalar_t__ wd_startup_countdown ; 
 int /*<<< orphan*/  wd_timer_actions ; 

__attribute__((used)) static void
FUNC15(void *arg)
{
	struct ipmi_softc *sc = arg;
	struct ipmi_request *req;
	device_t dev;
	int error, i;

	FUNC5(&sc->ipmi_ich);
	dev = sc->ipmi_dev;

	/* Initialize interface-independent state. */
	FUNC13(&sc->ipmi_requests_lock, "ipmi requests", NULL, MTX_DEF);
	FUNC13(&sc->ipmi_io_lock, "ipmi io", NULL, MTX_DEF);
	FUNC6(&sc->ipmi_request_added, "ipmireq");
	FUNC4(&sc->ipmi_pending_requests);

	/* Initialize interface-dependent state. */
	error = sc->ipmi_startup(sc);
	if (error) {
		FUNC8(dev, "Failed to initialize interface: %d\n",
		    error);
		return;
	}

	/* Send a GET_DEVICE_ID request. */
	FUNC2(req, FUNC1(IPMI_APP_REQUEST, 0),
	    IPMI_GET_DEVICE_ID, 0, 15);

	error = FUNC11(sc, req, MAX_TIMEOUT);
	if (error == EWOULDBLOCK) {
		FUNC8(dev, "Timed out waiting for GET_DEVICE_ID\n");
		return;
	} else if (error) {
		FUNC8(dev, "Failed GET_DEVICE_ID: %d\n", error);
		return;
	} else if (req->ir_compcode != 0) {
		FUNC8(dev,
		    "Bad completion code for GET_DEVICE_ID: %d\n",
		    req->ir_compcode);
		return;
	} else if (req->ir_replylen < 5) {
		FUNC8(dev, "Short reply for GET_DEVICE_ID: %d\n",
		    req->ir_replylen);
		return;
	}

	FUNC8(dev, "IPMI device rev. %d, firmware rev. %d.%d%d, "
	    "version %d.%d, device support mask %#x\n",
	    req->ir_reply[1] & 0x0f,
	    req->ir_reply[2] & 0x7f, req->ir_reply[3] >> 4, req->ir_reply[3] & 0x0f,
	    req->ir_reply[4] & 0x0f, req->ir_reply[4] >> 4, req->ir_reply[5]);

	sc->ipmi_dev_support = req->ir_reply[5];

	FUNC3(req, FUNC1(IPMI_APP_REQUEST, 0),
	    IPMI_CLEAR_FLAGS, 1, 0);

	FUNC11(sc, req, 0);

	/* XXX: Magic numbers */
	if (req->ir_compcode == 0xc0) {
		FUNC8(dev, "Clear flags is busy\n");
	}
	if (req->ir_compcode == 0xc1) {
		FUNC8(dev, "Clear flags illegal\n");
	}

	for (i = 0; i < 8; i++) {
		FUNC3(req, FUNC1(IPMI_APP_REQUEST, 0),
		    IPMI_GET_CHANNEL_INFO, 1, 0);
		req->ir_request[0] = i;

		FUNC11(sc, req, 0);

		if (req->ir_compcode != 0)
			break;
	}
	FUNC8(dev, "Number of channels %d\n", i);

	/*
	 * Probe for watchdog, but only for backends which support
	 * polled driver requests.
	 */
	if (sc->ipmi_driver_requests_polled) {
		FUNC3(req, FUNC1(IPMI_APP_REQUEST, 0),
		    IPMI_GET_WDOG, 0, 0);

		FUNC11(sc, req, 0);

		if (req->ir_compcode == 0x00) {
			FUNC8(dev, "Attached watchdog\n");
			/* register the watchdog event handler */
			sc->ipmi_watchdog_tag = FUNC0(
				watchdog_list, ipmi_wd_event, sc, 0);
			sc->ipmi_shutdown_tag = FUNC0(
				shutdown_pre_sync, ipmi_shutdown_event,
				sc, 0);
		}
	}

	sc->ipmi_cdev = FUNC12(&ipmi_cdevsw, FUNC7(dev),
	    UID_ROOT, GID_OPERATOR, 0660, "ipmi%d", FUNC7(dev));
	if (sc->ipmi_cdev == NULL) {
		FUNC8(dev, "Failed to create cdev\n");
		return;
	}
	sc->ipmi_cdev->si_drv1 = sc;

	/*
	 * Set initial watchdog state. If desired, set an initial
	 * watchdog on startup. Or, if the watchdog device is
	 * disabled, clear any existing watchdog.
	 */
	if (on && wd_startup_countdown > 0) {
		wd_timer_actions = IPMI_SET_WD_ACTION_POWER_CYCLE;
		if (FUNC10(sc, wd_startup_countdown) == 0 &&
		    FUNC9(sc) == 0) {
			sc->ipmi_watchdog_active = wd_startup_countdown;
			sc->ipmi_watchdog_actions = wd_timer_actions;
			sc->ipmi_watchdog_pretimeout = wd_pretimeout_countdown;
		} else
			(void)FUNC10(sc, 0);
		FUNC9(sc);
	} else if (!on)
		(void)FUNC10(sc, 0);
	/*
	 * Power cycle the system off using IPMI. We use last - 2 since we don't
	 * handle all the other kinds of reboots. We'll let others handle them.
	 * We only try to do this if the BMC supports the Chassis device.
	 */
	if (sc->ipmi_dev_support & IPMI_ADS_CHASSIS) {
		FUNC8(dev, "Establishing power cycle handler\n");
		sc->ipmi_power_cycle_tag = FUNC0(shutdown_final,
		    ipmi_power_cycle, sc, SHUTDOWN_PRI_LAST - 2);
	}
}