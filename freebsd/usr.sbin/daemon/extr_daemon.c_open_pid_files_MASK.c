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
struct pidfh {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 struct pidfh* FUNC2 (char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pidfh*) ; 

__attribute__((used)) static void
FUNC4(const char *pidfile, const char *ppidfile,
	       struct pidfh **pfh, struct pidfh **ppfh)
{
	pid_t fpid;
	int serrno;

	if (pidfile) {
		*pfh = FUNC2(pidfile, 0600, &fpid);
		if (*pfh == NULL) {
			if (errno == EEXIST) {
				FUNC1(3, "process already running, pid: %d",
				    fpid);
			}
			FUNC0(2, "pidfile ``%s''", pidfile);
		}
	}
	/* Do the same for the actual daemon process. */
	if (ppidfile) {
		*ppfh = FUNC2(ppidfile, 0600, &fpid);
		if (*ppfh == NULL) {
			serrno = errno;
			FUNC3(*pfh);
			errno = serrno;
			if (errno == EEXIST) {
				FUNC1(3, "process already running, pid: %d",
				     fpid);
			}
			FUNC0(2, "ppidfile ``%s''", ppidfile);
		}
	}
}