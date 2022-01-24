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
struct TYPE_6__ {int /*<<< orphan*/  yp_buf_val; int /*<<< orphan*/  yp_buf_len; } ;
struct TYPE_5__ {int /*<<< orphan*/  yp_buf_val; int /*<<< orphan*/  yp_buf_len; } ;
struct ypupdate_args {TYPE_3__ datum; TYPE_2__ key; int /*<<< orphan*/  mapname; } ;
struct svc_req {scalar_t__ rq_clntcred; int /*<<< orphan*/  rq_xprt; } ;
struct TYPE_4__ {char* name; } ;
struct authdes_cred {TYPE_1__ adc_fullname; } ;
typedef  enum auth_stat { ____Placeholder_auth_stat } auth_stat ;

/* Variables and functions */
 int AUTH_OK ; 
 int /*<<< orphan*/  YPOP_INSERT ; 
 int FUNC0 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct svc_req*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

unsigned int *
FUNC4(struct ypupdate_args *args, struct svc_req *svcreq)
{
	struct authdes_cred *des_cred;
	static int res;
	char *netname;
	enum auth_stat astat;

	res = 0;

	astat = FUNC2(svcreq);

	if (astat != AUTH_OK) {
		FUNC1(svcreq->rq_xprt, astat);
		return(&res);
	}

	des_cred = (struct authdes_cred *) svcreq->rq_clntcred;
	netname = des_cred->adc_fullname.name;

	res = FUNC0(netname, "/etc/publickey", YPOP_INSERT,
		args->key.yp_buf_len, args->key.yp_buf_val,
		args->datum.yp_buf_len, args->datum.yp_buf_val);

	if (res)
		return (&res);

	res = FUNC3(netname, args->mapname, YPOP_INSERT,
		args->key.yp_buf_len, args->key.yp_buf_val,
		args->datum.yp_buf_len, args->datum.yp_buf_val);

	return (&res);
}