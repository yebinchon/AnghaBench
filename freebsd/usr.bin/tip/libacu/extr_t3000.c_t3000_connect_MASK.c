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
struct termios {int dummy; } ;
struct tbaud_msg {char* msg; int /*<<< orphan*/  baud; } ;
typedef  int /*<<< orphan*/  sig_t ;
typedef  int /*<<< orphan*/  dialer_buf ;

/* Variables and functions */
 int /*<<< orphan*/  DIALTIMEOUT ; 
 int /*<<< orphan*/  FD ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  TCSAFLUSH ; 
 int /*<<< orphan*/  VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct termios*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct termios*,int /*<<< orphan*/ ) ; 
 scalar_t__ dialtimeout ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigALRM ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 scalar_t__ FUNC12 (char*,char*,int) ; 
 scalar_t__ FUNC13 (char*) ; 
 struct tbaud_msg* tbaud_msg ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct termios*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct termios*) ; 
 int /*<<< orphan*/  timeoutbuf ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC17(void)
{
	char c;
	int nc, nl, n;
	char dialer_buf[64];
	struct tbaud_msg *bm;
	sig_t f;

	if (FUNC13("\r\n") == 0)
		return (0);
	f = FUNC10(SIGALRM, sigALRM);
again:
	nc = 0; nl = sizeof(dialer_buf)-1;
	FUNC2(dialer_buf, sizeof(dialer_buf));
	dialtimeout = 0;
	for (nc = 0, nl = sizeof(dialer_buf)-1 ; nl > 0 ; nc++, nl--) {
		if (FUNC9(timeoutbuf))
			break;
		FUNC0(FUNC5(FUNC16(DIALTIMEOUT)));
		n = FUNC8(FD, &c, 1);
		FUNC0(0);
		if (n <= 0)
			break;
		c &= 0x7f;
		if (c == '\r') {
			if (FUNC13("\n") == 0)
				break;
			if (!dialer_buf[0])
				goto again;
			if (FUNC11(dialer_buf, "RINGING") == 0 &&
			    FUNC1(FUNC16(VERBOSE))) {
#ifdef DEBUG
				printf("%s\r\n", dialer_buf);
#endif
				goto again;
			}
			if (FUNC12(dialer_buf, "CONNECT",
				    sizeof("CONNECT")-1) != 0)
				break;
			for (bm = tbaud_msg ; bm->msg ; bm++)
				if (FUNC11(bm->msg,
				    dialer_buf+sizeof("CONNECT")-1) == 0) {
					struct termios	cntrl;

					FUNC14(FD, &cntrl);
					FUNC4(&cntrl, bm->baud);
					FUNC3(&cntrl, bm->baud);
					FUNC15(FD, TCSAFLUSH, &cntrl);
					FUNC10(SIGALRM, f);
#ifdef DEBUG
					if (boolean(value(VERBOSE)))
						printf("%s\r\n", dialer_buf);
#endif
					return (1);
				}
			break;
		}
		dialer_buf[nc] = c;
#ifdef notdef
		if (boolean(value(VERBOSE)))
			putchar(c);
#endif
	}
	FUNC6("%s\r\n", dialer_buf);
	FUNC10(SIGALRM, f);
	return (0);
}