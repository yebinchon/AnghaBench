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
typedef  int pid_t ;

/* Variables and functions */
 void* AC ; 
 char* DV ; 
 int EBUSY ; 
 int EIO ; 
 void* FD ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  alarmtr ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int child ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 char FUNC3 (char*,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  jmpbuf ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 void* FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int*) ; 

int
FUNC15(char *num, char *acu)
{
        int status;
        int timelim;
	pid_t pid;

        if (FUNC1(FUNC13(VERBOSE)))
                FUNC8("\nstarting call...");
#ifdef DEBUG
        printf ("(acu=%s)\n", acu);
#endif
        if ((AC = FUNC7(acu, O_RDWR)) < 0) {
                if (errno == EBUSY)
                        FUNC8("line busy...");
                else
                        FUNC8("acu open error...");
                return (0);
        }
        if (FUNC9(jmpbuf)) {
                FUNC6(child, SIGKILL);
                FUNC2(AC);
                return (0);
        }
        FUNC10(SIGALRM, alarmtr);
        timelim = 5 * FUNC12(num);
        FUNC0(timelim < 30 ? 30 : timelim);
        if ((child = FUNC5()) == 0) {
                /*
                 * ignore this stuff for aborts
                 */
                FUNC10(SIGALRM, SIG_IGN);
		FUNC10(SIGINT, SIG_IGN);
                FUNC10(SIGQUIT, SIG_IGN);
                FUNC11(2);
                FUNC4(FUNC3(num, acu) != 'A');
        }
        /*
         * open line - will return on carrier
         */
        if ((FD = FUNC7(DV, O_RDWR)) < 0) {
#ifdef DEBUG
                printf("(after open, errno=%d)\n", errno);
#endif
                if (errno == EIO)
                        FUNC8("lost carrier...");
                else
                        FUNC8("dialup line open failed...");
                FUNC0(0);
                FUNC6(child, SIGKILL);
                FUNC2(AC);
                return (0);
        }
        FUNC0(0);
        FUNC10(SIGALRM, SIG_DFL);
        while ((pid = FUNC14(&status)) != child && pid != -1)
                ;
        if (status) {
                FUNC2(AC);
                return (0);
        }
        return (1);
}