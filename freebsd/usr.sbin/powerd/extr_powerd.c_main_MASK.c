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
typedef  int uint64_t ;
typedef  int u_int ;
struct timeval {int tv_sec; int tv_usec; } ;
struct pidfh {int dummy; } ;
typedef  int pid_t ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  curfreq ;

/* Variables and functions */
 int DEFAULT_ACTIVE_PERCENT ; 
 int DEFAULT_IDLE_PERCENT ; 
 int DEFAULT_POLL_INTERVAL ; 
 scalar_t__ EEXIST ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int EX_UNAVAILABLE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int MODE_ADAPTIVE ; 
 int MODE_HIADAPTIVE ; 
 int MODE_MAX ; 
 int MODE_MIN ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
#define  SRC_AC 130 
#define  SRC_BATTERY 129 
#define  SRC_UNKNOWN 128 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int acline_status ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  cp_times_mib ; 
 int cpu_idle_mark ; 
 int cpu_running_mark ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int devd_pipe ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ exit_requested ; 
 int /*<<< orphan*/  FUNC10 (int*) ; 
 int /*<<< orphan*/  freq_mib ; 
 int FUNC11 () ; 
 size_t FUNC12 (int,int*,int) ; 
 scalar_t__ FUNC13 () ; 
 int FUNC14 (int,char**,char*) ; 
 int /*<<< orphan*/  handle_sigs ; 
 int /*<<< orphan*/  levels_mib ; 
 char** modes ; 
 char* optarg ; 
 int /*<<< orphan*/  FUNC15 (char*,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,int*,int) ; 
 struct pidfh* FUNC17 (char const*,int,int*) ; 
 int /*<<< orphan*/  FUNC18 (struct pidfh*) ; 
 int /*<<< orphan*/  FUNC19 (struct pidfh*) ; 
 int poll_ival ; 
 int /*<<< orphan*/  FUNC20 (char*,...) ; 
 scalar_t__ FUNC21 (int*,int**,int**,int,int) ; 
 scalar_t__ FUNC22 (int*) ; 
 int /*<<< orphan*/  FUNC23 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 scalar_t__ FUNC24 (int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ,int,int*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (char*,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int vflag ; 
 int /*<<< orphan*/  FUNC29 (char*,...) ; 
 int /*<<< orphan*/  FUNC30 (char*,...) ; 

int
FUNC31(int argc, char * argv[])
{
	struct timeval timeout;
	fd_set fdset;
	int nfds;
	struct pidfh *pfh = NULL;
	const char *pidfile = NULL;
	int freq, curfreq, initfreq, *freqs, i, j, *mwatts, numfreqs, load;
	int minfreq = -1, maxfreq = -1;
	int ch, mode, mode_ac, mode_battery, mode_none, idle, to;
	uint64_t mjoules_used;
	size_t len;

	/* Default mode for all AC states is adaptive. */
	mode_ac = mode_none = MODE_HIADAPTIVE;
	mode_battery = MODE_ADAPTIVE;
	cpu_running_mark = DEFAULT_ACTIVE_PERCENT;
	cpu_idle_mark = DEFAULT_IDLE_PERCENT;
	poll_ival = DEFAULT_POLL_INTERVAL;
	mjoules_used = 0;
	vflag = 0;

	/* User must be root to control frequencies. */
	if (FUNC13() != 0)
		FUNC8(1, "must be root to run");

	while ((ch = FUNC14(argc, argv, "a:b:i:m:M:n:p:P:r:s:v")) != -1)
		switch (ch) {
		case 'a':
			FUNC16(optarg, &mode_ac, ch);
			break;
		case 'b':
			FUNC16(optarg, &mode_battery, ch);
			break;
		case 's':
			FUNC15(optarg, ch);
			break;
		case 'i':
			cpu_idle_mark = FUNC4(optarg);
			if (cpu_idle_mark < 0 || cpu_idle_mark > 100) {
				FUNC30("%d is not a valid percent",
				    cpu_idle_mark);
				FUNC28();
			}
			break;
		case 'm':
			minfreq = FUNC4(optarg);
			if (minfreq < 0) {
				FUNC30("%d is not a valid CPU frequency",
				    minfreq);
				FUNC28();
			}
			break;
		case 'M':
			maxfreq = FUNC4(optarg);
			if (maxfreq < 0) {
				FUNC30("%d is not a valid CPU frequency",
				    maxfreq);
				FUNC28();
			}
			break;
		case 'n':
			FUNC16(optarg, &mode_none, ch);
			break;
		case 'p':
			poll_ival = FUNC4(optarg);
			if (poll_ival < 5) {
				FUNC30("poll interval is in units of ms");
				FUNC28();
			}
			break;
		case 'P':
			pidfile = optarg;
			break;
		case 'r':
			cpu_running_mark = FUNC4(optarg);
			if (cpu_running_mark <= 0 || cpu_running_mark > 100) {
				FUNC30("%d is not a valid percent",
				    cpu_running_mark);
				FUNC28();
			}
			break;
		case 'v':
			vflag = 1;
			break;
		default:
			FUNC28();
		}

	mode = mode_none;

	/* Poll interval is in units of ms. */
	poll_ival *= 1000;

	/* Look up various sysctl MIBs. */
	len = 2;
	if (FUNC27("kern.cp_times", cp_times_mib, &len))
		FUNC7(1, "lookup kern.cp_times");
	len = 4;
	if (FUNC27("dev.cpu.0.freq", freq_mib, &len))
		FUNC7(EX_UNAVAILABLE, "no cpufreq(4) support -- aborting");
	len = 4;
	if (FUNC27("dev.cpu.0.freq_levels", levels_mib, &len))
		FUNC7(1, "lookup freq_levels");

	/* Check if we can read the load and supported freqs. */
	if (FUNC22(NULL))
		FUNC7(1, "read_usage_times");
	if (FUNC21(&numfreqs, &freqs, &mwatts, minfreq, maxfreq))
		FUNC7(1, "error reading supported CPU frequencies");
	if (numfreqs == 0)
		FUNC8(1, "no CPU frequencies in user-specified range");

	/* Run in the background unless in verbose mode. */
	if (!vflag) {
		pid_t otherpid;

		pfh = FUNC17(pidfile, 0600, &otherpid);
		if (pfh == NULL) {
			if (errno == EEXIST) {
				FUNC8(1, "powerd already running, pid: %d",
				    otherpid);
			}
			FUNC29("cannot open pid file");
		}
		if (FUNC5(0, 0) != 0) {
			FUNC29("cannot enter daemon mode, exiting");
			FUNC18(pfh);
			FUNC9(EXIT_FAILURE);

		}
		FUNC19(pfh);
	}

	/* Decide whether to use ACPI or APM to read the AC line status. */
	FUNC2();

	/*
	 * Exit cleanly on signals.
	 */
	FUNC25(SIGINT, handle_sigs);
	FUNC25(SIGTERM, handle_sigs);

	freq = initfreq = curfreq = FUNC11();
	i = FUNC12(curfreq, freqs, numfreqs);
	if (freq < 1)
		freq = 1;

	/*
	 * If we are in adaptive mode and the current frequency is outside the
	 * user-defined range, adjust it to be within the user-defined range.
	 */
	FUNC3();
	if (acline_status > SRC_UNKNOWN)
		FUNC8(1, "invalid AC line status %d", acline_status);
	if ((acline_status == SRC_AC &&
	    (mode_ac == MODE_ADAPTIVE || mode_ac == MODE_HIADAPTIVE)) ||
	    (acline_status == SRC_BATTERY &&
	    (mode_battery == MODE_ADAPTIVE || mode_battery == MODE_HIADAPTIVE)) ||
	    (acline_status == SRC_UNKNOWN &&
	    (mode_none == MODE_ADAPTIVE || mode_none == MODE_HIADAPTIVE))) {
		/* Read the current frequency. */
		len = sizeof(curfreq);
		if (FUNC26(freq_mib, 4, &curfreq, &len, NULL, 0) != 0) {
			if (vflag)
				FUNC29("error reading current CPU frequency");
		}
		if (curfreq < freqs[numfreqs - 1]) {
			if (vflag) {
				FUNC20("CPU frequency is below user-defined "
				    "minimum; changing frequency to %d "
				    "MHz\n", freqs[numfreqs - 1]);
			}
			if (FUNC24(freqs[numfreqs - 1]) != 0) {
				FUNC29("error setting CPU freq %d",
				    freqs[numfreqs - 1]);
			}
		} else if (curfreq > freqs[0]) {
			if (vflag) {
				FUNC20("CPU frequency is above user-defined "
				    "maximum; changing frequency to %d "
				    "MHz\n", freqs[0]);
			}
			if (FUNC24(freqs[0]) != 0) {
				FUNC29("error setting CPU freq %d",
				    freqs[0]);
			}
		}
	}

	idle = 0;
	/* Main loop. */
	for (;;) {
		FUNC1(&fdset);
		if (devd_pipe >= 0) {
			FUNC0(devd_pipe, &fdset);
			nfds = devd_pipe + 1;
		} else {
			nfds = 0;
		}
		if (mode == MODE_HIADAPTIVE || idle < 120)
			to = poll_ival;
		else if (idle < 360)
			to = poll_ival * 2;
		else
			to = poll_ival * 4;
		timeout.tv_sec = to / 1000000;
		timeout.tv_usec = to % 1000000;
		FUNC23(nfds, &fdset, NULL, &fdset, &timeout);

		/* If the user requested we quit, print some statistics. */
		if (exit_requested) {
			if (vflag && mjoules_used != 0)
				FUNC20("total joules used: %u.%03u\n",
				    (u_int)(mjoules_used / 1000),
				    (int)mjoules_used % 1000);
			break;
		}

		/* Read the current AC status and record the mode. */
		FUNC3();
		switch (acline_status) {
		case SRC_AC:
			mode = mode_ac;
			break;
		case SRC_BATTERY:
			mode = mode_battery;
			break;
		case SRC_UNKNOWN:
			mode = mode_none;
			break;
		default:
			FUNC8(1, "invalid AC line status %d", acline_status);
		}

		/* Read the current frequency. */
		if (idle % 32 == 0) {
			if ((curfreq = FUNC11()) == 0)
				continue;
			i = FUNC12(curfreq, freqs, numfreqs);
		}
		idle++;
		if (vflag) {
			/* Keep a sum of all power actually used. */
			if (mwatts[i] != -1)
				mjoules_used +=
				    (mwatts[i] * (poll_ival / 1000)) / 1000;
		}

		/* Always switch to the lowest frequency in min mode. */
		if (mode == MODE_MIN) {
			freq = freqs[numfreqs - 1];
			if (curfreq != freq) {
				if (vflag) {
					FUNC20("now operating on %s power; "
					    "changing frequency to %d MHz\n",
					    modes[acline_status], freq);
				}
				idle = 0;
				if (FUNC24(freq) != 0) {
					FUNC29("error setting CPU freq %d",
					    freq);
					continue;
				}
			}
			continue;
		}

		/* Always switch to the highest frequency in max mode. */
		if (mode == MODE_MAX) {
			freq = freqs[0];
			if (curfreq != freq) {
				if (vflag) {
					FUNC20("now operating on %s power; "
					    "changing frequency to %d MHz\n",
					    modes[acline_status], freq);
				}
				idle = 0;
				if (FUNC24(freq) != 0) {
					FUNC29("error setting CPU freq %d",
					    freq);
					continue;
				}
			}
			continue;
		}

		/* Adaptive mode; get the current CPU usage times. */
		if (FUNC22(&load)) {
			if (vflag)
				FUNC29("read_usage_times() failed");
			continue;
		}

		if (mode == MODE_ADAPTIVE) {
			if (load > cpu_running_mark) {
				if (load > 95 || load > cpu_running_mark * 2)
					freq *= 2;
				else
					freq = freq * load / cpu_running_mark;
				if (freq > freqs[0])
					freq = freqs[0];
			} else if (load < cpu_idle_mark &&
			    curfreq * load < freqs[FUNC12(
			    freq * 7 / 8, freqs, numfreqs)] *
			    cpu_running_mark) {
				freq = freq * 7 / 8;
				if (freq < freqs[numfreqs - 1])
					freq = freqs[numfreqs - 1];
			}
		} else { /* MODE_HIADAPTIVE */
			if (load > cpu_running_mark / 2) {
				if (load > 95 || load > cpu_running_mark)
					freq *= 4;
				else
					freq = freq * load * 2 / cpu_running_mark;
				if (freq > freqs[0] * 2)
					freq = freqs[0] * 2;
			} else if (load < cpu_idle_mark / 2 &&
			    curfreq * load < freqs[FUNC12(
			    freq * 31 / 32, freqs, numfreqs)] *
			    cpu_running_mark / 2) {
				freq = freq * 31 / 32;
				if (freq < freqs[numfreqs - 1])
					freq = freqs[numfreqs - 1];
			}
		}
		if (vflag) {
		    FUNC20("load %3d%%, current freq %4d MHz (%2d), wanted freq %4d MHz\n",
			load, curfreq, i, freq);
		}
		j = FUNC12(freq, freqs, numfreqs);
		if (i != j) {
			if (vflag) {
				FUNC20("changing clock"
				    " speed from %d MHz to %d MHz\n",
				    freqs[i], freqs[j]);
			}
			idle = 0;
			if (FUNC24(freqs[j]))
				FUNC29("error setting CPU frequency %d",
				    freqs[j]);
		}
	}
	if (FUNC24(initfreq))
		FUNC29("error setting CPU frequency %d", initfreq);
	FUNC10(freqs);
	FUNC10(mwatts);
	FUNC6();
	if (!vflag)
		FUNC18(pfh);

	FUNC9(0);
}