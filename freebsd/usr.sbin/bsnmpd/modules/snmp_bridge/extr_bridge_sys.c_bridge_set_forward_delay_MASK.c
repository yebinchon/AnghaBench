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
struct ifdrv {int ifd_len; int /*<<< orphan*/  ifd_cmd; struct ifbrparam* ifd_data; int /*<<< orphan*/  ifd_name; } ;
struct ifbrparam {int /*<<< orphan*/  ifbrp_fwddelay; } ;
struct bridge_if {int /*<<< orphan*/  bridge_fwd_delay; int /*<<< orphan*/  bif_name; } ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  b_param ;

/* Variables and functions */
 int /*<<< orphan*/  BRDGSFD ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  SIOCSDRVSPEC ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifdrv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int
FUNC5(struct bridge_if *bif, int32_t fwd_delay)
{
	struct ifdrv ifd;
	struct ifbrparam b_param;

	FUNC3(ifd.ifd_name, bif->bif_name, IFNAMSIZ);
	ifd.ifd_len = sizeof(b_param);
	ifd.ifd_data = &b_param;
	b_param.ifbrp_fwddelay = FUNC1(fwd_delay);
	ifd.ifd_cmd = BRDGSFD;

	if (FUNC0(sock, SIOCSDRVSPEC, &ifd) < 0) {
		FUNC4(LOG_ERR, "set bridge param: ioctl(BRDGSFD) "
		    "failed: %s", FUNC2(errno));
		return (-1);
	}

	bif->bridge_fwd_delay = b_param.ifbrp_fwddelay;
	return (0);
}