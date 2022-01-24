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
typedef  scalar_t__ u_long ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct sockaddr_in {int dummy; } ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 scalar_t__ MIN_VERS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (struct sockaddr_in*,scalar_t__,scalar_t__,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct sockaddr_in*,scalar_t__,scalar_t__,struct timeval,int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,...) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static CLIENT *
FUNC6(struct sockaddr_in *addr, u_long prog, u_long vers,
    int *fdp, const char *trans)
{
	CLIENT *clnt;

	if (FUNC5(trans, "tcp") == 0) {
		clnt = FUNC1(addr, prog, vers, fdp, 0, 0);
	} else {
		struct timeval to;

		to.tv_sec = 5;
		to.tv_usec = 0;
		clnt = FUNC2(addr, prog, vers, to, fdp);
	}
	if (clnt == (CLIENT *)NULL) {
		FUNC0("rpcinfo");
		if (vers == MIN_VERS)
			FUNC4("program %lu is not available\n", prog);
		else
			FUNC4("program %lu version %lu is not available\n",
							prog, vers);
		FUNC3(1);
	}
	return (clnt);
}