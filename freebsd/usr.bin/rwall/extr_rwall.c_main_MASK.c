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
typedef  int /*<<< orphan*/  xdrproc_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 scalar_t__ RPC_SUCCESS ; 
 int /*<<< orphan*/  WALLPROC_WALL ; 
 int /*<<< orphan*/  WALLPROG ; 
 int /*<<< orphan*/  WALLVERS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,struct timeval) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  mbuf ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ xdr_void ; 
 scalar_t__ xdr_wrapstring ; 

int
FUNC7(int argc, char *argv[])
{
	char *wallhost, res;
	CLIENT *cl;
	struct timeval tv;

	if ((argc < 2) || (argc > 3))
		FUNC6();

	wallhost = argv[1];

	FUNC5(argv[2]);

	/*
	 * Create client "handle" used for calling MESSAGEPROG on the
	 * server designated on the command line. We tell the rpc package
	 * to use the "tcp" protocol when contacting the server.
	*/
	cl = FUNC1(wallhost, WALLPROG, WALLVERS, "udp");
	if (cl == NULL) {
		/*
		 * Couldn't establish connection with server.
		 * Print error message and die.
		 */
		FUNC4(1, "%s", FUNC2(wallhost));
	}

	tv.tv_sec = 15;		/* XXX ?? */
	tv.tv_usec = 0;
	if (FUNC0(cl, WALLPROC_WALL, (xdrproc_t)xdr_wrapstring, &mbuf,
	    (xdrproc_t)xdr_void, &res, tv) != RPC_SUCCESS) {
		/*
		 * An error occurred while calling the server.
		 * Print error message and die.
		 */
		FUNC4(1, "%s", FUNC3(cl, wallhost));
	}

	return (0);
}