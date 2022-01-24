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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FD ; 
 int /*<<< orphan*/  FIONREAD ; 
 int /*<<< orphan*/  MAXRETRY ; 
 int /*<<< orphan*/  TCIOFLUSH ; 
 int /*<<< orphan*/  TIOCCDTR ; 
 int /*<<< orphan*/  TIOCSDTR ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (char*,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(void)
{
	int already = 0;
	int len;
	char buf[40];

	while (already++ < MAXRETRY) {
		FUNC7(FD, TCIOFLUSH);
		FUNC6(FD, "\rAT Z\r", 6);	/* reset modem */
		FUNC0(buf, sizeof(buf));
		FUNC4(2);
		FUNC1(FD, FIONREAD, &len);
#if 1
if (len == 0) len = 1;
#endif
		if (len) {
			len = FUNC3(FD, buf, sizeof(buf));
#ifdef DEBUG
			buf[len] = '\0';
			printf("t3000_sync: (\"%s\")\n\r", buf);
#endif
			if (FUNC5(buf, '0') || 
		   	   (FUNC5(buf, 'O') && FUNC5(buf, 'K')))
				return(1);
		}
		/*
		 * If not strapped for DTR control,
		 * try to get command mode.
		 */
		FUNC4(1);
		FUNC6(FD, "+++", 3);
		FUNC4(1);
		/*
		 * Toggle DTR to force anyone off that might have left
		 * the modem connected.
		 */
		FUNC1(FD, TIOCCDTR, 0);
		FUNC4(1);
		FUNC1(FD, TIOCSDTR, 0);
	}
	FUNC6(FD, "\rAT Z\r", 6);
	return (0);
}