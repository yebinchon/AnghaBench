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
struct target {int /*<<< orphan*/  t_name; struct auth_group* t_auth_group; } ;
struct portal_group {scalar_t__ pg_discovery_filter; TYPE_2__* pg_discovery_auth_group; } ;
struct port {struct auth_group* p_auth_group; struct target* p_target; } ;
struct connection {int /*<<< orphan*/ * conn_user; int /*<<< orphan*/ * conn_chap; int /*<<< orphan*/  conn_initiator_name; int /*<<< orphan*/  conn_initiator_sa; TYPE_1__* conn_portal; } ;
struct auth_group {scalar_t__ ag_type; } ;
struct auth {int /*<<< orphan*/  a_secret; } ;
struct TYPE_4__ {scalar_t__ ag_type; } ;
struct TYPE_3__ {struct portal_group* p_portal_group; } ;

/* Variables and functions */
 scalar_t__ AG_TYPE_NO_AUTHENTICATION ; 
 scalar_t__ PG_FILTER_PORTAL ; 
 scalar_t__ PG_FILTER_PORTAL_NAME ; 
 scalar_t__ PG_FILTER_PORTAL_NAME_AUTH ; 
 TYPE_2__* PG_FILTER_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct auth* FUNC1 (struct auth_group const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct auth_group const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct auth_group const*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *,...) ; 

__attribute__((used)) static bool
FUNC6(const struct connection *conn,
    const struct port *port)
{
	const struct auth_group *ag;
	const struct portal_group *pg;
	const struct target *targ;
	const struct auth *auth;
	int error;

	targ = port->p_target;
	ag = port->p_auth_group;
	if (ag == NULL)
		ag = targ->t_auth_group;
	pg = conn->conn_portal->p_portal_group;

	FUNC0(pg->pg_discovery_auth_group != PG_FILTER_UNKNOWN);

	if (pg->pg_discovery_filter >= PG_FILTER_PORTAL &&
	    FUNC3(ag, &conn->conn_initiator_sa) != 0) {
		FUNC5("initiator does not match initiator portals "
		    "allowed for target \"%s\"; skipping", targ->t_name);
		return (true);
	}

	if (pg->pg_discovery_filter >= PG_FILTER_PORTAL_NAME &&
	    FUNC2(ag, conn->conn_initiator_name) != 0) {
		FUNC5("initiator does not match initiator names "
		    "allowed for target \"%s\"; skipping", targ->t_name);
		return (true);
	}

	if (pg->pg_discovery_filter >= PG_FILTER_PORTAL_NAME_AUTH &&
	    ag->ag_type != AG_TYPE_NO_AUTHENTICATION) {
		if (conn->conn_chap == NULL) {
			FUNC0(pg->pg_discovery_auth_group->ag_type ==
			    AG_TYPE_NO_AUTHENTICATION);

			FUNC5("initiator didn't authenticate, but target "
			    "\"%s\" requires CHAP; skipping", targ->t_name);
			return (true);
		}

		FUNC0(conn->conn_user != NULL);
		auth = FUNC1(ag, conn->conn_user);
		if (auth == NULL) {
			FUNC5("CHAP user \"%s\" doesn't match target "
			    "\"%s\"; skipping", conn->conn_user, targ->t_name);
			return (true);
		}

		error = FUNC4(conn->conn_chap, auth->a_secret);
		if (error != 0) {
			FUNC5("password for CHAP user \"%s\" doesn't "
			    "match target \"%s\"; skipping",
			    conn->conn_user, targ->t_name);
			return (true);
		}
	}

	return (false);
}