#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
struct netconfig {int dummy; } ;
struct netbuf {int len; int maxlen; char* buf; } ;
struct addrinfo {int ai_addrlen; char* ai_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  re_status; } ;
struct TYPE_4__ {scalar_t__ cf_stat; TYPE_1__ cf_error; } ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  RPCBPROG ; 
 int /*<<< orphan*/  RPC_ANYFD ; 
 int /*<<< orphan*/  RPC_FAILED ; 
 scalar_t__ RPC_N2AXLATEFAILURE ; 
 scalar_t__ RPC_RPCBFAILURE ; 
 scalar_t__ RPC_TLIERROR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,struct netconfig*,struct netbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct addrinfo*) ; 
 scalar_t__ FUNC2 (char*,char*,struct addrinfo*,struct addrinfo**) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__ rpc_createerr ; 

__attribute__((used)) static CLIENT*
FUNC6(char *host, struct netconfig *nconf,
    u_long rpcbversnum, struct netbuf **targaddr)
{
	struct netbuf addr;
	struct addrinfo hints, *res;
	CLIENT *client = NULL;

	/* Get the address of the rpcbind */
	FUNC5(&hints, 0, sizeof hints);
	if (FUNC2(host, "rpcbind", &hints, &res) != 0) {
		rpc_createerr.cf_stat = RPC_N2AXLATEFAILURE;
		return (NULL);
	}
	addr.len = addr.maxlen = res->ai_addrlen;
	addr.buf = res->ai_addr;
	client = FUNC0(RPC_ANYFD, nconf, &addr, RPCBPROG,
			rpcbversnum, 0, 0);
	if (client) {
		if (targaddr != NULL) {
			*targaddr =
			    (struct netbuf *)FUNC3(sizeof (struct netbuf));
			if (*targaddr != NULL) {
				(*targaddr)->maxlen = addr.maxlen;
				(*targaddr)->len = addr.len;
				(*targaddr)->buf = (char *)FUNC3(addr.len);
				if ((*targaddr)->buf != NULL) {
					FUNC4((*targaddr)->buf, addr.buf,
						addr.len);
				}
			}
		}
	} else {
		if (rpc_createerr.cf_stat == RPC_TLIERROR) {
			/*
			 * Assume that the other system is dead; this is a
			 * better error to display to the user.
			 */
			rpc_createerr.cf_stat = RPC_RPCBFAILURE;
			rpc_createerr.cf_error.re_status = RPC_FAILED;
		}
	}
	FUNC1(res);
	return (client);
}