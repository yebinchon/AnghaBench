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
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  SIG_PF ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SIGALRM ; 
 scalar_t__ SOCK_DGRAM ; 
 scalar_t__ _IDLE ; 
 int _RPCSVC_CLOSEDOWN ; 
 scalar_t__ _SERVED ; 
 scalar_t__ _rpcfdtype ; 
 scalar_t__ _rpcsvcstate ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(int sig)
{
	if (_rpcsvcstate == _IDLE) {
		extern fd_set svc_fdset;
		static int size;
		int i, openfd;

		if (_rpcfdtype == SOCK_DGRAM)
			FUNC2(0);
		if (size == 0) {
			size = FUNC3();
		}
		for (i = 0, openfd = 0; i < size && openfd < 2; i++)
			if (FUNC0(i, &svc_fdset))
				openfd++;
		if (openfd <= 1)
			FUNC2(0);
	}
	if (_rpcsvcstate == _SERVED)
		_rpcsvcstate = _IDLE;

	(void) FUNC4(SIGALRM, (SIG_PF) closedown);
	(void) FUNC1(_RPCSVC_CLOSEDOWN/2);
}