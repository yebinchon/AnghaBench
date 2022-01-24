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
struct ifdrv {int ifd_len; int /*<<< orphan*/  ifd_cmd; struct ifbreq* ifd_data; int /*<<< orphan*/  ifd_name; } ;
struct ifbreq {scalar_t__ ifbr_path_cost; int /*<<< orphan*/  ifbr_ifsname; } ;
struct bridge_port {char const* p_name; scalar_t__ admin_path_cost; } ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  b_req ;

/* Variables and functions */
 int /*<<< orphan*/  BRDGSIFCOST ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  SIOCSDRVSPEC ; 
 scalar_t__ SNMP_PORT_MIN_PATHCOST ; 
 scalar_t__ SNMP_PORT_PATHCOST_OBSOLETE ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifdrv*) ; 
 int /*<<< orphan*/  sock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 

int
FUNC4(const char *bif_name, struct bridge_port *bp,
	int32_t path_cost)
{
	struct ifdrv ifd;
	struct ifbreq b_req;

	if (path_cost < SNMP_PORT_MIN_PATHCOST ||
	    path_cost > SNMP_PORT_PATHCOST_OBSOLETE)
		return (-2);

	FUNC2(ifd.ifd_name, bif_name, sizeof(ifd.ifd_name));
	ifd.ifd_len = sizeof(b_req);
	ifd.ifd_data = &b_req;
	FUNC2(b_req.ifbr_ifsname, bp->p_name, sizeof(b_req.ifbr_ifsname));

	b_req.ifbr_path_cost = path_cost;
	ifd.ifd_cmd = BRDGSIFCOST;

	if (FUNC0(sock, SIOCSDRVSPEC, &ifd) < 0) {
		FUNC3(LOG_ERR, "set member %s param: ioctl(BRDGSIFCOST) "
		    "failed: %s", bp->p_name, FUNC1(errno));
		return (-1);
	}

	bp->admin_path_cost = path_cost;

	return (0);
}