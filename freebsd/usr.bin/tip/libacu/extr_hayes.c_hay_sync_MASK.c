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

/* Variables and functions */
 int /*<<< orphan*/  DUMBUFLEN ; 
 int /*<<< orphan*/  FD ; 
 int /*<<< orphan*/  FIONREAD ; 
 int /*<<< orphan*/  MAXRETRY ; 
 int /*<<< orphan*/  TIOCCDTR ; 
 int /*<<< orphan*/  TIOCSDTR ; 
 char* dumbuf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (char*,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC7(void)
{
	int len, retry = 0;

	while (retry++ <= MAXRETRY) {
		FUNC6(FD, "AT\r", 3);
		FUNC4(1);
		FUNC0(FD, FIONREAD, &len);
		if (len) {
			len = FUNC3(FD, dumbuf, FUNC1(len, DUMBUFLEN));
			if (FUNC5(dumbuf, '0') || 
		   	(FUNC5(dumbuf, 'O') && FUNC5(dumbuf, 'K')))
				return(1);
#ifdef DEBUG
			dumbuf[len] = '\0';
			printf("hay_sync: (\"%s\") %d\n\r", dumbuf, retry);
#endif
		}
		FUNC0(FD, TIOCCDTR, 0);
		FUNC0(FD, TIOCSDTR, 0);
	}
	FUNC2("Cannot synchronize with hayes...\n\r");
	return(0);
}