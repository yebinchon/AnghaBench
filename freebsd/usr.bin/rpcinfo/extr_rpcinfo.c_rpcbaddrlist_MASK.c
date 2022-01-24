#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xdrproc_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct rpcent {char* r_name; } ;
struct netconfig {int dummy; } ;
struct netbuf {struct netbuf* buf; } ;
typedef  TYPE_1__* rpcb_entry_list_ptr ;
struct TYPE_11__ {char* r_nc_protofmly; char* r_nc_proto; scalar_t__ r_nc_semantics; char* r_maddr; } ;
typedef  TYPE_2__ rpcb_entry ;
struct TYPE_13__ {char* cl_netid; } ;
struct TYPE_12__ {int r_prog; char* r_netid; int /*<<< orphan*/  r_vers; void* r_owner; int /*<<< orphan*/ * r_addr; } ;
struct TYPE_10__ {TYPE_2__ rpcb_entry_map; struct TYPE_10__* rpcb_entry_next; } ;
typedef  TYPE_3__ RPCB ;
typedef  TYPE_4__ CLIENT ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,struct timeval) ; 
 scalar_t__ NC_TPI_CLTS ; 
 scalar_t__ NC_TPI_COTS ; 
 int /*<<< orphan*/  RPCBPROC_GETADDRLIST ; 
 int /*<<< orphan*/  RPCBVERS4 ; 
 scalar_t__ RPC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*) ; 
 TYPE_4__* FUNC4 (char*,int /*<<< orphan*/ ,struct netbuf**) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct netbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct netconfig*) ; 
 TYPE_4__* FUNC8 (char*,struct netconfig*,int /*<<< orphan*/ ,struct netbuf**) ; 
 struct netconfig* FUNC9 (char*) ; 
 int FUNC10 (char*) ; 
 struct rpcent* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 void* nullstring ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC16 (struct netconfig*,struct netbuf*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 scalar_t__ xdr_rpcb ; 
 scalar_t__ xdr_rpcb_entry_list_ptr ; 

__attribute__((used)) static void
FUNC18(char *netid, int argc, char **argv)
{
	rpcb_entry_list_ptr head = NULL;
	struct timeval minutetimeout;
	register CLIENT *client;
	struct rpcent *rpc;
	char *host;
	RPCB parms;
	struct netbuf *targaddr;

	if (argc != 3)
		FUNC17();
	host = argv[0];
	if (netid == NULL) {
		client = FUNC4(host, RPCBVERS4, &targaddr);
	} else {
		struct netconfig *nconf;

		nconf = FUNC9(netid);
		if (nconf == NULL) {
			FUNC13("rpcinfo: invalid transport");
			FUNC5(1);
		}
		client = FUNC8(host, nconf, RPCBVERS4, &targaddr);
		if (nconf)
			(void) FUNC7(nconf);
	}
	if (client == (CLIENT *)NULL) {
		FUNC2("rpcinfo: can't contact rpcbind");
		FUNC5(1);
	}
	minutetimeout.tv_sec = 60;
	minutetimeout.tv_usec = 0;

	parms.r_prog = 	FUNC10(argv[1]);
	parms.r_vers = 	FUNC12(argv[2]);
	parms.r_netid = client->cl_netid;
	if (targaddr == NULL) {
		parms.r_addr = nullstring;	/* for XDRing */
	} else {
		/*
		 * We also send the remote system the address we
		 * used to contact it in case it can help it
		 * connect back with us
		 */
		struct netconfig *nconf;

		nconf = FUNC9(client->cl_netid);
		if (nconf != NULL) {
			parms.r_addr = FUNC16(nconf, targaddr);
			if (parms.r_addr == NULL)
				parms.r_addr = nullstring;
			FUNC7(nconf);
		} else {
			parms.r_addr = nullstring;	/* for XDRing */
		}
		FUNC6(targaddr->buf);
		FUNC6(targaddr);
	}
	parms.r_owner = nullstring;

	if (FUNC0(client, RPCBPROC_GETADDRLIST, (xdrproc_t) xdr_rpcb,
		(char *) &parms, (xdrproc_t) xdr_rpcb_entry_list_ptr,
		(char *) &head, minutetimeout) != RPC_SUCCESS) {
		FUNC3(client, "rpcinfo: can't contact rpcbind: ");
		FUNC5(1);
	}
	if (head == NULL) {
		FUNC14("No remote programs registered.\n");
	} else {
		FUNC14(
	"   program vers  tp_family/name/class    address\t\t  service\n");
		for (; head != NULL; head = head->rpcb_entry_next) {
			rpcb_entry *re;
			char buf[128];

			re = &head->rpcb_entry_map;
			FUNC14("%10u%3u    ",
				parms.r_prog, parms.r_vers);
			FUNC15(buf, "%s/%s/%s ",
				re->r_nc_protofmly, re->r_nc_proto,
				re->r_nc_semantics == NC_TPI_CLTS ? "clts" :
				re->r_nc_semantics == NC_TPI_COTS ? "cots" :
						"cots_ord");
			FUNC14("%-24s", buf);
			FUNC14("%-24s", re->r_maddr);
			rpc = FUNC11(parms.r_prog);
			if (rpc)
				FUNC14(" %-13s", rpc->r_name);
			else
				FUNC14(" %-13s", "-");
			FUNC14("\n");
		}
	}
	FUNC1(client);
	return;
}