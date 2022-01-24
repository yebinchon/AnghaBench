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
struct target {int /*<<< orphan*/  t_name; } ;
struct portal_group {int /*<<< orphan*/  pg_tag; } ;
struct port {int /*<<< orphan*/  p_ctl_port; scalar_t__ p_ioctl_port; struct portal_group* p_portal_group; struct target* p_target; } ;
struct ctl_req {scalar_t__ status; scalar_t__ error_str; void* lun; void* plun; int /*<<< orphan*/  port; int /*<<< orphan*/ * args_nvl; int /*<<< orphan*/ * args; int /*<<< orphan*/  args_len; int /*<<< orphan*/  reqtype; int /*<<< orphan*/  driver; int /*<<< orphan*/  targ_port; } ;
struct ctl_port_entry {scalar_t__ status; scalar_t__ error_str; void* lun; void* plun; int /*<<< orphan*/  port; int /*<<< orphan*/ * args_nvl; int /*<<< orphan*/ * args; int /*<<< orphan*/  args_len; int /*<<< orphan*/  reqtype; int /*<<< orphan*/  driver; int /*<<< orphan*/  targ_port; } ;
struct ctl_lun_map {scalar_t__ status; scalar_t__ error_str; void* lun; void* plun; int /*<<< orphan*/  port; int /*<<< orphan*/ * args_nvl; int /*<<< orphan*/ * args; int /*<<< orphan*/  args_len; int /*<<< orphan*/  reqtype; int /*<<< orphan*/  driver; int /*<<< orphan*/  targ_port; } ;
typedef  int /*<<< orphan*/  req ;
typedef  int /*<<< orphan*/  entry ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_DISABLE_PORT ; 
 scalar_t__ CTL_LUN_ERROR ; 
 int /*<<< orphan*/  CTL_LUN_MAP ; 
 scalar_t__ CTL_LUN_OK ; 
 int /*<<< orphan*/  CTL_PORT_REQ ; 
 int /*<<< orphan*/  CTL_REQ_REMOVE ; 
 void* UINT32_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct ctl_req*,int) ; 
 int /*<<< orphan*/  ctl_fd ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ctl_req*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 

int
FUNC11(struct port *port)
{
	struct ctl_port_entry entry;
	struct ctl_lun_map lm;
	struct ctl_req req;
	struct target *targ = port->p_target;
	struct portal_group *pg = port->p_portal_group;
	int error;

	/* Disable port */
	FUNC0(&entry, sizeof(entry));
	entry.targ_port = port->p_ctl_port;
	error = FUNC1(ctl_fd, CTL_DISABLE_PORT, &entry);
	if (error != 0) {
		FUNC3("CTL_DISABLE_PORT ioctl failed");
		return (-1);
	}

	/* Remove iSCSI or ioctl port. */
	if (port->p_portal_group || port->p_ioctl_port) {
		FUNC0(&req, sizeof(req));
		FUNC10(req.driver, port->p_ioctl_port ? "ioctl" : "iscsi",
		    sizeof(req.driver));
		req.reqtype = CTL_REQ_REMOVE;
		req.args_nvl = FUNC7(0);
		if (req.args_nvl == NULL)
			FUNC2(1, "nvlist_create");

		if (port->p_ioctl_port)
			FUNC6(req.args_nvl, "port_id", "%d",
			    port->p_ctl_port);
		else {
			FUNC5(req.args_nvl, "cfiscsi_target",
			    targ->t_name);
			FUNC6(req.args_nvl,
			    "cfiscsi_portal_group_tag", "%u", pg->pg_tag);
		}

		req.args = FUNC9(req.args_nvl, &req.args_len);
		if (req.args == NULL) {
			FUNC3("error packing nvlist");
			return (1);
		}

		error = FUNC1(ctl_fd, CTL_PORT_REQ, &req);
		FUNC8(req.args_nvl);

		if (error != 0) {
			FUNC3("error issuing CTL_PORT_REQ ioctl");
			return (1);
		}
		if (req.status == CTL_LUN_ERROR) {
			FUNC4("error returned from port removal request: %s",
			    req.error_str);
			return (1);
		}
		if (req.status != CTL_LUN_OK) {
			FUNC4("unknown port removal request status %d",
			    req.status);
			return (1);
		}
	} else {
		/* Disable LUN mapping. */
		lm.port = port->p_ctl_port;
		lm.plun = UINT32_MAX;
		lm.lun = UINT32_MAX;
		error = FUNC1(ctl_fd, CTL_LUN_MAP, &lm);
		if (error != 0)
			FUNC3("CTL_LUN_MAP ioctl failed");
	}
	return (0);
}