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
struct rtprio {int type; void* prio; } ;
typedef  void* pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  RTP_LOOKUP ; 
#define  RTP_PRIO_FIFO 131 
#define  RTP_PRIO_IDLE 130 
#define  RTP_PRIO_NORMAL 129 
#define  RTP_PRIO_REALTIME 128 
 int /*<<< orphan*/  RTP_SET ; 
 void* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char) ; 
 void* FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void*,struct rtprio*) ; 
 scalar_t__ FUNC9 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 

int
FUNC12(int argc, char *argv[])
{
	struct rtprio rtp;
	const char *progname;
	pid_t proc = 0;

	progname = FUNC5();

	if (FUNC9(progname, "rtprio") == 0)
		rtp.type = RTP_PRIO_REALTIME;
	else if (FUNC9(progname, "idprio") == 0)
		rtp.type = RTP_PRIO_IDLE;
	else
		FUNC2(1, "invalid progname");

	switch (argc) {
	case 2:
		proc = FUNC7(argv[1], "pid");
		proc = FUNC0(proc);
		/* FALLTHROUGH */
	case 1:
		if (FUNC8(RTP_LOOKUP, proc, &rtp) != 0)
			FUNC1(1, "RTP_LOOKUP");
		switch (rtp.type) {
		case RTP_PRIO_REALTIME:
		case RTP_PRIO_FIFO:
			FUNC11("realtime priority %d", rtp.prio);
			break;
		case RTP_PRIO_NORMAL:
			FUNC11("normal priority");
			break;
		case RTP_PRIO_IDLE:
			FUNC11("idle priority %d", rtp.prio);
			break;
		default:
			FUNC2(1, "invalid priority type %d", rtp.type);
			break;
		}
		FUNC4(0);
	default:
		if (argv[1][0] == '-' || FUNC6(argv[1][0])) {
			if (argv[1][0] == '-') {
				if (FUNC9(argv[1], "-t") == 0) {
					rtp.type = RTP_PRIO_NORMAL;
					rtp.prio = 0;
				} else {
					FUNC10();
					break;
				}
			} else
				rtp.prio = FUNC7(argv[1], "priority");
		} else {
			FUNC10();
			break;
		}

		if (argv[2][0] == '-') {
			proc = FUNC7(argv[2], "pid");
			proc = FUNC0(proc);
		}

		if (FUNC8(RTP_SET, proc, &rtp) != 0)
			FUNC1(1, "RTP_SET");

		if (proc == 0) {
			FUNC3(argv[2], &argv[2]);
			FUNC1(1, "execvp: %s", argv[2]);
		}
		FUNC4(0);
	}
	/* NOTREACHED */
}