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
struct ypresp_master {int /*<<< orphan*/  peer; int /*<<< orphan*/  stat; } ;
struct ypreq_nokey {char* domain; char* map; } ;
struct timeval {scalar_t__ tv_usec; int /*<<< orphan*/  tv_sec; } ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int RPC_SUCCESS ; 
 int /*<<< orphan*/  YPPROC_MASTER ; 
 int /*<<< orphan*/  _yplib_host_timeout ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ypreq_nokey*,int /*<<< orphan*/ ,struct ypresp_master*,struct timeval) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ypresp_master*,int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ xdr_ypreq_nokey ; 
 scalar_t__ xdr_ypresp_master ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(CLIENT *client, char *indomain, char *inmap, char **outname)
{
	struct ypresp_master yprm;
	struct ypreq_nokey yprnk;
	struct timeval tv;
	int r;

	tv.tv_sec = _yplib_host_timeout;
	tv.tv_usec = 0;
	yprnk.domain = indomain;
	yprnk.map = inmap;

	FUNC2(&yprm, 0, sizeof yprm);

	r = FUNC0(client, YPPROC_MASTER,
	    (xdrproc_t)xdr_ypreq_nokey, &yprnk,
	    (xdrproc_t)xdr_ypresp_master, &yprm, tv);
	if (r != RPC_SUCCESS)
		FUNC1(client, "yp_master: clnt_call");
	if (!(r = FUNC5(yprm.stat)))
		*outname = FUNC3(yprm.peer);
	FUNC4((xdrproc_t)xdr_ypresp_master, (char *)&yprm);

	return (r);
}