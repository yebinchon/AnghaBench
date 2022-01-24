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
struct mpt_cfg_page_req {int len; int /*<<< orphan*/  ioc_status; void* buf; } ;
typedef  int /*<<< orphan*/  req ;
typedef  int /*<<< orphan*/  U16 ;
struct TYPE_2__ {int PageLength; } ;
typedef  TYPE_1__ CONFIG_PAGE_HEADER ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MPI_IOCSTATUS_SUCCESS ; 
 int /*<<< orphan*/  MPTIO_WRITE_CFG_PAGE ; 
 int /*<<< orphan*/  FUNC1 (struct mpt_cfg_page_req*,int) ; 
 int errno ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,struct mpt_cfg_page_req*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

int
FUNC5(int fd, void *buf, U16 *IOCStatus)
{
	CONFIG_PAGE_HEADER *hdr;
	struct mpt_cfg_page_req req;

	if (IOCStatus != NULL)
		*IOCStatus = MPI_IOCSTATUS_SUCCESS;
	FUNC1(&req, sizeof(req));
	req.buf = buf;
	hdr = buf;
	req.len = hdr->PageLength * 4;
	if (FUNC2(fd, MPTIO_WRITE_CFG_PAGE, &req) < 0)
		return (errno);
	if (!FUNC0(req.ioc_status)) {
		if (IOCStatus != NULL) {
			*IOCStatus = req.ioc_status;
			return (0);
		}
		FUNC4("Writing config page failed: %s",
		    FUNC3(req.ioc_status));
		return (EIO);
	}
	return (0);
}