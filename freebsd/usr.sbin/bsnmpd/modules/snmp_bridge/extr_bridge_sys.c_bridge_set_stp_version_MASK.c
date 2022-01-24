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
struct ifbrparam {int /*<<< orphan*/  ifbrp_proto; } ;
struct bridge_if {int /*<<< orphan*/  stp_version; int /*<<< orphan*/  bif_name; } ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  b_param ;

/* Variables and functions */
 int /*<<< orphan*/  BRDGSPROTO ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  SIOCSDRVSPEC ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifdrv*) ; 
 int /*<<< orphan*/  sock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int
FUNC4(struct bridge_if *bif, int32_t stp_proto)
{
	struct ifdrv ifd;
	struct ifbrparam b_param;

	FUNC2(ifd.ifd_name, bif->bif_name, IFNAMSIZ);
	ifd.ifd_len = sizeof(b_param);
	ifd.ifd_data = &b_param;
	b_param.ifbrp_proto = stp_proto;
	ifd.ifd_cmd = BRDGSPROTO;

	if (FUNC0(sock, SIOCSDRVSPEC, &ifd) < 0) {
		FUNC3(LOG_ERR, "set bridge param: ioctl(BRDGSPROTO) "
		    "failed: %s", FUNC1(errno));
		return (-1);
	}

	bif->stp_version = b_param.ifbrp_proto;
	return (0);
}