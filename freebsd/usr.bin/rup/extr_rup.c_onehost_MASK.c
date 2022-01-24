#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xdrproc_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct hostent {int /*<<< orphan*/  h_addr; } ;
typedef  int /*<<< orphan*/  statstime ;
typedef  int /*<<< orphan*/  host_stat ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 scalar_t__ RPC_SUCCESS ; 
 int /*<<< orphan*/  RSTATPROC_STATS ; 
 int /*<<< orphan*/  RSTATPROG ; 
 int /*<<< orphan*/  RSTATVERS_TIME ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct timeval) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 struct hostent* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct sockaddr_in*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,...) ; 
 scalar_t__ xdr_statstime ; 
 scalar_t__ xdr_void ; 

__attribute__((used)) static int
FUNC10(char *host)
{
	CLIENT *rstat_clnt;
	statstime host_stat;
	struct sockaddr_in addr;
	struct hostent *hp;
	struct timeval tv;

	hp = FUNC6(host);
	if (hp == NULL) {
		FUNC9("unknown host \"%s\"", host);
		return(-1);
	}

	rstat_clnt = FUNC2(host, RSTATPROG, RSTATVERS_TIME, "udp");
	if (rstat_clnt == NULL) {
		FUNC9("%s %s", host, FUNC4(""));
		return(-1);
	}

	FUNC0((char *)&host_stat, sizeof(host_stat));
	tv.tv_sec = 15;	/* XXX ??? */
	tv.tv_usec = 0;
	if (FUNC1(rstat_clnt, RSTATPROC_STATS,
	    (xdrproc_t)xdr_void, NULL,
	    (xdrproc_t)xdr_statstime, &host_stat, tv) != RPC_SUCCESS) {
		FUNC9("%s: %s", host, FUNC5(rstat_clnt, host));
		FUNC3(rstat_clnt);
		return(-1);
	}

	FUNC7(&addr.sin_addr.s_addr, hp->h_addr, sizeof(int));
	FUNC8(&host_stat, &addr);
	FUNC3(rstat_clnt);
	return (0);
}