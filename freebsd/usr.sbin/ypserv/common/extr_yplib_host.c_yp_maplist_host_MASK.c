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
struct ypresp_maplist {int /*<<< orphan*/  stat; struct ypmaplist* maps; } ;
struct ypmaplist {int dummy; } ;
struct timeval {scalar_t__ tv_usec; int /*<<< orphan*/  tv_sec; } ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int RPC_SUCCESS ; 
 int /*<<< orphan*/  YPPROC_MAPLIST ; 
 int /*<<< orphan*/  _yplib_host_timeout ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**,int /*<<< orphan*/ ,struct ypresp_maplist*,struct timeval) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ypresp_maplist*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ xdr_domainname ; 
 scalar_t__ xdr_ypresp_maplist ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(CLIENT *client, char *indomain, struct ypmaplist **outmaplist)
{
	struct ypresp_maplist ypml;
	struct timeval tv;
	int r;

	tv.tv_sec = _yplib_host_timeout;
	tv.tv_usec = 0;

	FUNC2(&ypml, 0, sizeof ypml);

	r = FUNC0(client, YPPROC_MAPLIST,
	    (xdrproc_t)xdr_domainname, &indomain,
	    (xdrproc_t)xdr_ypresp_maplist, &ypml, tv);
	if (r != RPC_SUCCESS)
		FUNC1(client, "yp_maplist: clnt_call");
	*outmaplist = ypml.maps;
	/* NO: xdr_free(xdr_ypresp_maplist, &ypml);*/

	return FUNC3(ypml.stat);
}