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
typedef  int /*<<< orphan*/  xid ;
typedef  int /*<<< orphan*/  xdrproc_t ;
typedef  int /*<<< orphan*/  u_int ;
struct vnode {int dummy; } ;
struct timeval {int dummy; } ;
struct rpc_callextra {int dummy; } ;
struct nlm_host {int dummy; } ;
struct nlm4_holder {scalar_t__ exclusive; int /*<<< orphan*/  svid; int /*<<< orphan*/  l_len; int /*<<< orphan*/  l_offset; } ;
struct TYPE_5__ {struct nlm4_holder holder; } ;
struct TYPE_6__ {scalar_t__ stat; TYPE_2__ nlm4_testrply_u; } ;
struct TYPE_4__ {int n_len; char* n_bytes; } ;
struct nlm4_testres {int exclusive; TYPE_3__ stat; TYPE_1__ cookie; int /*<<< orphan*/  alock; } ;
struct nlm4_testargs {int exclusive; TYPE_3__ stat; TYPE_1__ cookie; int /*<<< orphan*/  alock; } ;
struct flock {scalar_t__ l_type; scalar_t__ l_sysid; int /*<<< orphan*/  l_whence; int /*<<< orphan*/  l_pid; int /*<<< orphan*/  l_len; int /*<<< orphan*/  l_start; } ;
typedef  int /*<<< orphan*/  rpcvers_t ;
typedef  int /*<<< orphan*/  res ;
typedef  int /*<<< orphan*/  off_t ;
typedef  enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef  int /*<<< orphan*/  args ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int ENOLCK ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FALSE ; 
 int F_FLOCK ; 
 scalar_t__ F_RDLCK ; 
 scalar_t__ F_UNLCK ; 
 scalar_t__ F_WRLCK ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  PCATCH ; 
 int RPC_SUCCESS ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC3 (struct nlm4_testres*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ nlm4_denied ; 
 scalar_t__ nlm4_denied_grace_period ; 
 int /*<<< orphan*/ * FUNC4 (struct nlm_host*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct flock*,int,int,int /*<<< orphan*/ ,size_t,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct nlm4_testres*,struct nlm4_testres*,int /*<<< orphan*/ *,struct rpc_callextra*,struct timeval) ; 
 int /*<<< orphan*/  nlm_xid ; 
 int FUNC7 (struct nlm4_testres*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct nlm4_testres*) ; 
 scalar_t__ xdr_nlm4_testres ; 

__attribute__((used)) static int
FUNC9(struct nlm_host *host, struct rpc_callextra *ext,
    rpcvers_t vers, struct timeval *timo, int retries,
    struct vnode *vp, int op, struct flock *fl, int flags,
    int svid, size_t fhlen, void *fh, off_t size)
{
	struct nlm4_testargs args;
	char oh_space[32];
	struct nlm4_testres res;
	u_int xid;
	CLIENT *client;
	enum clnt_stat stat;
	int exclusive;
	int error;

	FUNC1(!(flags & F_FLOCK), ("unexpected F_FLOCK for F_GETLK"));

	FUNC3(&args, 0, sizeof(args));
	FUNC3(&res, 0, sizeof(res));

	exclusive = (fl->l_type == F_WRLCK);

	error = FUNC5(fl, flags, svid, vers, fhlen, fh, size,
	    &args.alock, oh_space);
	if (error)
		return (error);
	args.exclusive = exclusive;

	for (;;) {
		client = FUNC4(host, FALSE);
		if (!client)
			return (ENOLCK); /* XXX retry? */

		xid = FUNC2(&nlm_xid, 1);
		args.cookie.n_len = sizeof(xid);
		args.cookie.n_bytes = (char*) &xid;

		stat = FUNC6(vers, &args, &res, client, ext, *timo);

		FUNC0(client);

		if (stat != RPC_SUCCESS) {
			if (retries) {
				retries--;
				continue;
			}
			return (EINVAL);
		}

		if (res.stat.stat == nlm4_denied_grace_period) {
			/*
			 * The server has recently rebooted and is
			 * giving old clients a change to reclaim
			 * their locks. Wait for a few seconds and try
			 * again.
			 */
			FUNC8((xdrproc_t) xdr_nlm4_testres, &res);
			error = FUNC7(&args, PCATCH, "nlmgrace", 5*hz);
			if (error && error != EWOULDBLOCK)
				return (error);
			continue;
		}

		if (res.stat.stat == nlm4_denied) {
			struct nlm4_holder *h =
				&res.stat.nlm4_testrply_u.holder;
			fl->l_start = h->l_offset;
			fl->l_len = h->l_len;
			fl->l_pid = h->svid;
			if (h->exclusive)
				fl->l_type = F_WRLCK;
			else
				fl->l_type = F_RDLCK;
			fl->l_whence = SEEK_SET;
			fl->l_sysid = 0;
		} else {
			fl->l_type = F_UNLCK;
		}

		FUNC8((xdrproc_t) xdr_nlm4_testres, &res);

		return (0);
	}
}