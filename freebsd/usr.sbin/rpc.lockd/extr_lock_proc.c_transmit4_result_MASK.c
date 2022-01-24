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
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  nlm4_res ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  NLM_VERS4 ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,struct timeval) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int debug_level ; 
 int /*<<< orphan*/ * FUNC2 (struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ xdr_nlm4_res ; 
 scalar_t__ xdr_void ; 

void
FUNC4(int opcode, nlm4_res *result, struct sockaddr *addr)
{
	static char dummy;
	CLIENT *cli;
	struct timeval timeo;
	int success;

	if ((cli = FUNC2(addr, NLM_VERS4)) != NULL) {
		timeo.tv_sec = 0; /* No timeout - not expecting response */
		timeo.tv_usec = 0;

		success = FUNC0(cli, opcode,
		    (xdrproc_t)xdr_nlm4_res, result,
		    (xdrproc_t)xdr_void, &dummy, timeo);

		if (debug_level > 2)
			FUNC3(LOG_DEBUG, "clnt_call returns %d(%s)",
			    success, FUNC1(success));
	}
}