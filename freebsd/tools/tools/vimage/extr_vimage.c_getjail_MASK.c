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
struct jailparam {int vnet; int name; int path; int hostname; int domainname; int childcnt; int childmax; int cpuset; int parentjid; int rawsock; int socket_af; int mount; int jid; } ;
typedef  struct jailparam vstat_t ;
typedef  int /*<<< orphan*/  params ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct jailparam*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct jailparam*,int) ; 
 int FUNC2 (struct jailparam*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct jailparam*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct jailparam*,char*) ; 

__attribute__((used)) static int
FUNC5(vstat_t *vs, int lastjid, int verbose)
{
	struct jailparam params[32];	/* Must be > max(psize). */
	int psize = 0;

	FUNC0(params, sizeof(params));
	FUNC0(vs, sizeof(*vs));

	FUNC4(&params[psize], "lastjid");
	FUNC3(&params[psize++], &lastjid, sizeof lastjid);

	FUNC4(&params[psize], "vnet");
	FUNC3(&params[psize++], &vs->vnet, sizeof(vs->vnet));

	FUNC4(&params[psize], "name");
	FUNC3(&params[psize++], &vs->name, sizeof(vs->name));

	if (verbose == 0)
		goto done;

	FUNC4(&params[psize], "path");
	FUNC3(&params[psize++], &vs->path, sizeof(vs->path));

	FUNC4(&params[psize], "host.hostname");
	FUNC3(&params[psize++], &vs->hostname,
	    sizeof(vs->hostname));

	FUNC4(&params[psize], "host.domainname");
	FUNC3(&params[psize++], &vs->domainname,
	    sizeof(vs->domainname));

	FUNC4(&params[psize], "children.cur");
	FUNC3(&params[psize++], &vs->childcnt,
	    sizeof(vs->childcnt));

	if (verbose == 1)
		goto done;

	FUNC4(&params[psize], "children.max");
	FUNC3(&params[psize++], &vs->childmax,
	    sizeof(vs->childmax));

	FUNC4(&params[psize], "cpuset.id");
	FUNC3(&params[psize++], &vs->cpuset,
	    sizeof(vs->cpuset));

	FUNC4(&params[psize], "parent");
	FUNC3(&params[psize++], &vs->parentjid,
	    sizeof(vs->parentjid));

	FUNC4(&params[psize], "allow.raw_sockets");
	FUNC3(&params[psize++], &vs->rawsock,
	    sizeof(vs->rawsock));

	FUNC4(&params[psize], "allow.socket_af");
	FUNC3(&params[psize++], &vs->socket_af,
	    sizeof(vs->socket_af));

	FUNC4(&params[psize], "allow.mount");
	FUNC3(&params[psize++], &vs->mount, sizeof(vs->mount));

done:
	vs->jid = FUNC2(params, psize, 0);
	FUNC1(params, psize);
	return (vs->jid);
}