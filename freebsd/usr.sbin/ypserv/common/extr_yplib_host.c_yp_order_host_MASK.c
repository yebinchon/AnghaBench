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
typedef  int /*<<< orphan*/  u_int32_t ;
struct ypresp_order {int /*<<< orphan*/  stat; int /*<<< orphan*/  ordernum; } ;
struct ypreq_nokey {char* domain; char* map; } ;
struct timeval {scalar_t__ tv_usec; int /*<<< orphan*/  tv_sec; } ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int RPC_SUCCESS ; 
 int /*<<< orphan*/  YPPROC_ORDER ; 
 int /*<<< orphan*/  _yplib_host_timeout ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ypreq_nokey*,int /*<<< orphan*/ ,struct ypresp_order*,struct timeval) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ypresp_order*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ xdr_ypreq_nokey ; 
 scalar_t__ xdr_ypresp_order ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(CLIENT *client, char *indomain, char *inmap, u_int32_t *outorder)
{
	struct ypresp_order ypro;
	struct ypreq_nokey yprnk;
	struct timeval tv;
	int r;

	tv.tv_sec = _yplib_host_timeout;
	tv.tv_usec = 0;

	yprnk.domain = indomain;
	yprnk.map = inmap;

	FUNC2(&ypro, 0, sizeof ypro);

	r = FUNC0(client, YPPROC_ORDER,
	    (xdrproc_t)xdr_ypreq_nokey, &yprnk,
	    (xdrproc_t)xdr_ypresp_order, &ypro, tv);
	if (r != RPC_SUCCESS)
		FUNC1(client, "yp_order_host: clnt_call");
	*outorder = ypro.ordernum;
	FUNC3((xdrproc_t)xdr_ypresp_order, (char *)&ypro);

	return FUNC4(ypro.stat);
}