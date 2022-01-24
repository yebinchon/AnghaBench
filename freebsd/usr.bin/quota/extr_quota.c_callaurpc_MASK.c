#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xdrproc_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef  enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
struct TYPE_7__ {scalar_t__ cf_stat; } ;
struct TYPE_6__ {int /*<<< orphan*/  cl_auth; } ;
typedef  TYPE_1__ CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CLSET_RETRY_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,struct timeval) ; 
 TYPE_1__* FUNC3 (char*,int,int,char*) ; 
 TYPE_2__ rpc_createerr ; 

__attribute__((used)) static enum clnt_stat
FUNC4(char *host, int prognum, int versnum, int procnum,
    xdrproc_t inproc, char *in, xdrproc_t outproc, char *out)
{
	enum clnt_stat clnt_stat;
	struct timeval timeout, tottimeout;
 
	CLIENT *client = NULL;

 	client = FUNC3(host, prognum, versnum, "udp");
	if (client == NULL)
		return ((int)rpc_createerr.cf_stat);
	timeout.tv_usec = 0;
	timeout.tv_sec = 6;
	FUNC0(client, CLSET_RETRY_TIMEOUT, (char *)(void *)&timeout);

	client->cl_auth = FUNC1();
	tottimeout.tv_sec = 25;
	tottimeout.tv_usec = 0;
	clnt_stat = FUNC2(client, procnum, inproc, in,
	    outproc, out, tottimeout);
	return (clnt_stat);
}