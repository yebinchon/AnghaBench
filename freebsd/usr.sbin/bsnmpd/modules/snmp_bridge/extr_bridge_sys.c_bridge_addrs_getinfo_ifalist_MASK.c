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
struct ifdrv {int ifd_len; struct ifbaconf* ifd_data; int /*<<< orphan*/  ifd_cmd; int /*<<< orphan*/  ifd_name; } ;
struct ifbareq {int dummy; } ;
struct ifbaconf {int ifbac_len; struct ifbareq* ifbac_req; } ;
struct bridge_if {int /*<<< orphan*/  bif_name; } ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  bac ;

/* Variables and functions */
 int /*<<< orphan*/  BRDGRTS ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  SIOCGDRVSPEC ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (struct ifbareq*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifdrv*) ; 
 scalar_t__ FUNC2 (struct ifbareq*,int) ; 
 int /*<<< orphan*/  sock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int32_t
FUNC6(struct bridge_if *bif, struct ifbareq **buf)
{
	int n = 128;
	uint32_t len;
	struct ifbareq *ninbuf;
	struct ifbaconf bac;
	struct ifdrv ifd;

	*buf = NULL;
	FUNC4(ifd.ifd_name, bif->bif_name, IFNAMSIZ);
	ifd.ifd_cmd = BRDGRTS;
	ifd.ifd_len = sizeof(bac);
	ifd.ifd_data = &bac;

	for ( ; ; ) {
		len = n * sizeof(struct ifbareq);
		if ((ninbuf = (struct ifbareq *)FUNC2(*buf, len)) == NULL) {
			FUNC5(LOG_ERR, "get bridge address list: "
			    " realloc failed: %s", FUNC3(errno));
			FUNC0(*buf);
			*buf = NULL;
			return (-1);
		}

		bac.ifbac_len = len;
		bac.ifbac_req = *buf = ninbuf;

		if (FUNC1(sock, SIOCGDRVSPEC, &ifd) < 0) {
			FUNC5(LOG_ERR, "get bridge address list: "
			    "ioctl(BRDGRTS) failed: %s", FUNC3(errno));
			FUNC0(*buf);
			buf = NULL;
			return (-1);
		}

		if ((bac.ifbac_len + sizeof(struct ifbareq)) < len)
			break;

		n += 64;
	}

	return (bac.ifbac_len);
}