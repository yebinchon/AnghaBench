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
struct ifdrv {int ifd_len; scalar_t__ ifd_cmd; int /*<<< orphan*/  ifbr_ifsname; struct ifdrv* ifd_data; int /*<<< orphan*/  ifd_name; } ;
struct ifbreq {int ifd_len; scalar_t__ ifd_cmd; int /*<<< orphan*/  ifbr_ifsname; struct ifbreq* ifd_data; int /*<<< orphan*/  ifd_name; } ;
struct bridge_port {char const* p_name; scalar_t__ span_enable; } ;
typedef  int /*<<< orphan*/  ifd ;
typedef  int /*<<< orphan*/  b_req ;

/* Variables and functions */
 scalar_t__ BRDGADD ; 
 scalar_t__ BRDGADDS ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  SIOCSDRVSPEC ; 
 scalar_t__ begemotBridgeBaseSpanEnabled_enabled ; 
 int /*<<< orphan*/  FUNC0 (struct ifdrv*,int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifdrv*) ; 
 int /*<<< orphan*/  sock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*,char*,int /*<<< orphan*/ ) ; 

int
FUNC5(struct bridge_port *bp, const char *b_name)
{
	struct ifdrv ifd;
	struct ifbreq b_req;

	FUNC0(&ifd, sizeof(ifd));
	FUNC0(&b_req, sizeof(b_req));

	FUNC3(ifd.ifd_name, b_name, sizeof(ifd.ifd_name));
	ifd.ifd_len = sizeof(b_req);
	ifd.ifd_data = &b_req;
	FUNC3(b_req.ifbr_ifsname, bp->p_name, sizeof(b_req.ifbr_ifsname));

	if (bp->span_enable == begemotBridgeBaseSpanEnabled_enabled)
		ifd.ifd_cmd = BRDGADDS;
	else
		ifd.ifd_cmd = BRDGADD;

	if (FUNC1(sock, SIOCSDRVSPEC, &ifd) < 0) {
		FUNC4(LOG_ERR, "%s - add member : ioctl(%s) failed: %s",
		    bp->p_name,
		    (ifd.ifd_cmd == BRDGADDS ? "BRDGADDS" : "BRDGADD"),
		    FUNC2(errno));
		return (-1);
	}

	return (0);
}