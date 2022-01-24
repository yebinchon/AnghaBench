#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xdrproc_t ;
struct TYPE_6__ {int valdat_len; int /*<<< orphan*/  valdat_val; } ;
struct TYPE_5__ {int keydat_len; int /*<<< orphan*/  keydat_val; } ;
struct ypresp_key_val {TYPE_3__ val; TYPE_2__ key; int /*<<< orphan*/  stat; } ;
struct TYPE_4__ {char* keydat_val; int keydat_len; } ;
struct ypreq_key {char* domain; char* map; TYPE_1__ key; } ;
struct timeval {scalar_t__ tv_usec; int /*<<< orphan*/  tv_sec; } ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int RPC_SUCCESS ; 
 int /*<<< orphan*/  YPPROC_NEXT ; 
 int /*<<< orphan*/  _yplib_host_timeout ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ypreq_key*,int /*<<< orphan*/ ,struct ypresp_key_val*,struct timeval) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ypresp_key_val*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ xdr_ypreq_key ; 
 scalar_t__ xdr_ypresp_key_val ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

int
FUNC7(CLIENT *client, char *indomain, char *inmap, char *inkey,
    int inkeylen, char **outkey, int *outkeylen, char **outval, int *outvallen)
{
	struct ypresp_key_val yprkv;
	struct ypreq_key yprk;
	struct timeval tv;
	int r;

	*outkey = *outval = NULL;
	*outkeylen = *outvallen = 0;

	tv.tv_sec = _yplib_host_timeout;
	tv.tv_usec = 0;

	yprk.domain = indomain;
	yprk.map = inmap;
	yprk.key.keydat_val = inkey;
	yprk.key.keydat_len = inkeylen;
	FUNC4(&yprkv, 0, sizeof yprkv);

	r = FUNC0(client, YPPROC_NEXT,
	    (xdrproc_t)xdr_ypreq_key, &yprk,
	    (xdrproc_t)xdr_ypresp_key_val, &yprkv, tv);
	if (r != RPC_SUCCESS)
		FUNC1(client, "yp_next_host: clnt_call");
	if ( !(r = FUNC6(yprkv.stat)) ) {
		*outkeylen = yprkv.key.keydat_len;
		*outkey = FUNC2(*outkeylen+1);
		FUNC3(*outkey, yprkv.key.keydat_val, *outkeylen);
		(*outkey)[*outkeylen] = '\0';
		*outvallen = yprkv.val.valdat_len;
		*outval = FUNC2(*outvallen+1);
		FUNC3(*outval, yprkv.val.valdat_val, *outvallen);
		(*outval)[*outvallen] = '\0';
	}
	FUNC5((xdrproc_t)xdr_ypresp_key_val, (char *)&yprkv);

	return (r);
}