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
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int FD ; 
 int /*<<< orphan*/  FIONREAD ; 
 int MAXRETRY ; 
 int /*<<< orphan*/  TIOCCDTR ; 
 int /*<<< orphan*/  TIOCSDTR ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int) ; 

__attribute__((used)) static int
FUNC7(int fd)
{
	int already = 0, nread;
	char buf[60];

	/*
	 * Toggle DTR to force anyone off that might have left
	 * the modem connected, and insure a consistent state
	 * to start from.
	 *
	 * If you don't have the ioctl calls to diddle directly
	 * with DTR, you can always try setting the baud rate to 0.
	 */
	FUNC1(FD, TIOCCDTR, 0);
	FUNC5(1);
	FUNC1(FD, TIOCSDTR, 0);
	while (already < MAXRETRY) {
		/*
		 * After reseting the modem, send it two \r's to
		 * autobaud on. Make sure to delay between them
		 * so the modem can frame the incoming characters.
		 */
		FUNC6(fd, "\r", 1);
		FUNC0(1,10);
		FUNC6(fd, "\r", 1);
		FUNC5(2);
		if (FUNC1(fd, FIONREAD, (caddr_t)&nread) < 0) {
			FUNC3("tip: ioctl");
			continue;
		}
		while (nread > 0) {
			FUNC4(fd, buf, FUNC2(nread, 60));
			if ((buf[nread - 1] & 0177) == '$')
				return (1);
			nread -= FUNC2(nread, 60);
		}
		FUNC5(1);
		already++;
	}
	return (0);
}