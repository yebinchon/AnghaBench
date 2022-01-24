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
struct tool_ctx {unsigned int inspad_cnt; unsigned int peer_cnt; TYPE_1__* peers; int /*<<< orphan*/  dev; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
typedef  int /*<<< orphan*/  desc ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {unsigned int inmw_cnt; unsigned int outspad_cnt; struct tool_ctx* inmws; } ;

/* Variables and functions */
 int CTLFLAG_MPSAFE ; 
 int CTLFLAG_RD ; 
 int CTLFLAG_RDTUN ; 
 int /*<<< orphan*/  CTLFLAG_RW ; 
 int CTLFLAG_RWTUN ; 
 int CTLFLAG_WR ; 
 int CTLTYPE_STRING ; 
 int CTLTYPE_UINT ; 
 int /*<<< orphan*/  OID_AUTO ; 
 struct sysctl_oid* FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,struct tool_ctx*,unsigned int,int /*<<< orphan*/ ,char*,char*) ; 
 struct sysctl_oid_list* FUNC2 (struct sysctl_oid*) ; 
 int TOOL_BUF_LEN ; 
 struct sysctl_ctx_list* FUNC3 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,unsigned int) ; 
 int /*<<< orphan*/  sysctl_db_event_handle ; 
 int /*<<< orphan*/  sysctl_db_handle ; 
 int /*<<< orphan*/  sysctl_db_mask_handle ; 
 int /*<<< orphan*/  sysctl_db_valid_mask_handle ; 
 int /*<<< orphan*/  sysctl_link_handle ; 
 int /*<<< orphan*/  sysctl_local_port_number ; 
 int /*<<< orphan*/  sysctl_mw_handle ; 
 int /*<<< orphan*/  sysctl_mw_trans_handler ; 
 int /*<<< orphan*/  sysctl_peer_db_handle ; 
 int /*<<< orphan*/  sysctl_peer_db_mask_handle ; 
 int /*<<< orphan*/  sysctl_peer_link_event_handle ; 
 int /*<<< orphan*/  sysctl_peer_link_handle ; 
 int /*<<< orphan*/  sysctl_peer_mw_handle ; 
 int /*<<< orphan*/  sysctl_peer_port_number ; 
 int /*<<< orphan*/  sysctl_peer_spad_handle ; 
 int /*<<< orphan*/  sysctl_spad_handle ; 

__attribute__((used)) static void
FUNC6(struct tool_ctx *tc)
{
	char buf[TOOL_BUF_LEN], desc[TOOL_BUF_LEN];
	struct sysctl_oid_list *top, *peer_top;
	struct sysctl_oid *parent, *peer;
	struct sysctl_ctx_list *clist;
	unsigned int pidx, sidx, widx;

	clist = FUNC3(tc->dev);
	parent = FUNC4(tc->dev);
	top = FUNC2(parent);

	FUNC1(clist, top, OID_AUTO, "port", CTLTYPE_UINT |
	    CTLFLAG_RDTUN | CTLFLAG_MPSAFE, tc, 0, sysctl_local_port_number,
	    "IU", "local port number");

	FUNC1(clist, top, OID_AUTO, "link", CTLTYPE_STRING |
	    CTLFLAG_RWTUN | CTLFLAG_MPSAFE, tc, 0, sysctl_link_handle,
	    "IU", "link info");

	FUNC1(clist, top, OID_AUTO, "db", CTLTYPE_STRING |
	    CTLFLAG_RWTUN | CTLFLAG_MPSAFE, tc, 0, sysctl_db_handle,
	    "A", "db info");

	FUNC1(clist, top, OID_AUTO, "db_valid_mask", CTLTYPE_STRING |
	    CTLFLAG_RD | CTLFLAG_MPSAFE, tc, 0, sysctl_db_valid_mask_handle,
	    "A", "db valid mask");

	FUNC1(clist, top, OID_AUTO, "db_mask", CTLTYPE_STRING |
	    CTLFLAG_RWTUN | CTLFLAG_MPSAFE, tc, 0, sysctl_db_mask_handle,
	    "A", "db mask");

	FUNC1(clist, top, OID_AUTO, "db_event", CTLTYPE_STRING |
	    CTLFLAG_WR | CTLFLAG_MPSAFE, tc, 0, sysctl_db_event_handle,
	    "A", "db event");

	FUNC1(clist, top, OID_AUTO, "peer_db", CTLTYPE_STRING |
	    CTLFLAG_RWTUN | CTLFLAG_MPSAFE, tc, 0, sysctl_peer_db_handle,
	    "A", "peer db");

	FUNC1(clist, top, OID_AUTO, "peer_db_mask", CTLTYPE_STRING |
	    CTLFLAG_RWTUN | CTLFLAG_MPSAFE, tc, 0, sysctl_peer_db_mask_handle,
	    "IU", "peer db mask info");

	if (tc->inspad_cnt != 0) {
		for (sidx = 0; sidx < tc->inspad_cnt; sidx++) {
			FUNC5(buf, sizeof(buf), "spad%d", sidx);
			FUNC5(desc, sizeof(desc), "spad%d info", sidx);

			FUNC1(clist, top, OID_AUTO, buf,
			    CTLTYPE_STRING | CTLFLAG_RWTUN | CTLFLAG_MPSAFE,
			    tc, sidx, sysctl_spad_handle, "IU", desc);
		}
	}

	for (pidx = 0; pidx < tc->peer_cnt; pidx++) {
		FUNC5(buf, sizeof(buf), "peer%d", pidx);

		peer = FUNC0(clist, top, OID_AUTO, buf, CTLFLAG_RW, 0,
		    buf);
		peer_top = FUNC2(peer);

		FUNC1(clist, peer_top, OID_AUTO, "port",
		    CTLTYPE_UINT | CTLFLAG_RDTUN | CTLFLAG_MPSAFE, tc, pidx,
		    sysctl_peer_port_number, "IU", "peer port number");

		FUNC1(clist, peer_top, OID_AUTO, "link",
		    CTLTYPE_STRING | CTLFLAG_RWTUN | CTLFLAG_MPSAFE, tc, pidx,
		    sysctl_peer_link_handle, "IU", "peer_link info");

		FUNC1(clist, peer_top, OID_AUTO, "link_event",
		    CTLTYPE_STRING | CTLFLAG_RWTUN | CTLFLAG_MPSAFE, tc, pidx,
		    sysctl_peer_link_event_handle, "IU", "link event");

		for (widx = 0; widx < tc->peers[pidx].inmw_cnt; widx++) {
			FUNC5(buf, sizeof(buf), "mw_trans%d", widx);
			FUNC5(desc, sizeof(desc), "mw trans%d info", widx);

			FUNC1(clist, peer_top, OID_AUTO, buf,
			    CTLTYPE_STRING | CTLFLAG_RWTUN | CTLFLAG_MPSAFE,
			    &tc->peers[pidx].inmws[widx], 0,
			    sysctl_mw_trans_handler, "IU", desc);

			FUNC5(buf, sizeof(buf), "mw%d", widx);
			FUNC5(desc, sizeof(desc), "mw%d info", widx);

			FUNC1(clist, peer_top, OID_AUTO, buf,
			    CTLTYPE_STRING | CTLFLAG_RWTUN | CTLFLAG_MPSAFE,
			    &tc->peers[pidx].inmws[widx], 0,
			    sysctl_mw_handle, "IU", desc);

			FUNC5(buf, sizeof(buf), "peer_mw%d", widx);
			FUNC5(desc, sizeof(desc), "peer_mw%d info", widx);

			FUNC1(clist, peer_top, OID_AUTO, buf,
			    CTLTYPE_STRING | CTLFLAG_RWTUN | CTLFLAG_MPSAFE,
			    &tc->peers[pidx].inmws[widx], 0,
			    sysctl_peer_mw_handle, "IU", desc);
		}

		for (sidx = 0; sidx < tc->peers[pidx].outspad_cnt; sidx++) {
			FUNC5(buf, sizeof(buf), "spad%d", sidx);
			FUNC5(desc, sizeof(desc), "spad%d info", sidx);

			FUNC1(clist, peer_top, OID_AUTO, buf,
			    CTLTYPE_STRING | CTLFLAG_RWTUN | CTLFLAG_MPSAFE,
			    tc, sidx, sysctl_peer_spad_handle, "IU", desc);
		}
	}
}