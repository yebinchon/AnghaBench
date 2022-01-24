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
typedef  int uint32_t ;
struct ifdrv {int ifd_len; struct ifbpstpconf* ifd_data; int /*<<< orphan*/  ifd_cmd; int /*<<< orphan*/  ifd_name; } ;
struct ifbpstpreq {int dummy; } ;
struct ifbpstpconf {int ifbpstp_len; struct ifbpstpreq* ifbpstp_req; } ;
struct bridge_if {int /*<<< orphan*/  bif_name; } ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  ifbstp ;

/* Variables and functions */
 int /*<<< orphan*/  BRDGGIFSSTP ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  SIOCGDRVSPEC ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (struct ifbpstpreq*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifdrv*) ; 
 scalar_t__ FUNC2 (struct ifbpstpreq*,int) ; 
 int /*<<< orphan*/  sock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int32_t
FUNC6(struct bridge_if *bif, struct ifbpstpreq **buf)
{
	int n = 128;
	uint32_t len;
	struct ifbpstpreq *ninbuf;
	struct ifbpstpconf ifbstp;
	struct ifdrv ifd;

	*buf = NULL;
	FUNC4(ifd.ifd_name, bif->bif_name, IFNAMSIZ);
	ifd.ifd_cmd = BRDGGIFSSTP;
	ifd.ifd_len = sizeof(ifbstp);
	ifd.ifd_data = &ifbstp;

	for ( ; ; ) {
		len = n * sizeof(struct ifbpstpreq);
		if ((ninbuf = (struct ifbpstpreq *)
		    FUNC2(*buf, len)) == NULL) {
			FUNC5(LOG_ERR, "get bridge STP ports list: "
			    "realloc failed: %s", FUNC3(errno));
			FUNC0(*buf);
			*buf = NULL;
			return (-1);
		}

		ifbstp.ifbpstp_len = len;
		ifbstp.ifbpstp_req = *buf = ninbuf;

		if (FUNC1(sock, SIOCGDRVSPEC, &ifd) < 0) {
			FUNC5(LOG_ERR, "get bridge STP ports list: ioctl "
			    "(BRDGGIFSSTP) failed: %s", FUNC3(errno));
			FUNC0(*buf);
			buf = NULL;
			return (-1);
		}

		if ((ifbstp.ifbpstp_len + sizeof(struct ifbpstpreq)) < len)
			break;

		n += 64;
	}

	return (ifbstp.ifbpstp_len);
}