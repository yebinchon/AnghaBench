#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* PageNumber; void* PageType; } ;
struct mpt_cfg_page_req {TYPE_1__ header; int /*<<< orphan*/  ioc_status; int /*<<< orphan*/  page_address; } ;
typedef  int /*<<< orphan*/  req ;
typedef  void* U8 ;
typedef  int /*<<< orphan*/  U32 ;
typedef  int /*<<< orphan*/  U16 ;
typedef  TYPE_1__ CONFIG_PAGE_HEADER ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MPI_IOCSTATUS_SUCCESS ; 
 int /*<<< orphan*/  MPTIO_READ_CFG_HEADER ; 
 int /*<<< orphan*/  FUNC1 (struct mpt_cfg_page_req*,int) ; 
 int errno ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,struct mpt_cfg_page_req*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

int
FUNC5(int fd, U8 PageType, U8 PageNumber, U32 PageAddress,
    CONFIG_PAGE_HEADER *header, U16 *IOCStatus)
{
	struct mpt_cfg_page_req req;

	if (IOCStatus != NULL)
		*IOCStatus = MPI_IOCSTATUS_SUCCESS;
	FUNC1(&req, sizeof(req));
	req.header.PageType = PageType;
	req.header.PageNumber = PageNumber;
	req.page_address = PageAddress;
	if (FUNC2(fd, MPTIO_READ_CFG_HEADER, &req) < 0)
		return (errno);
	if (!FUNC0(req.ioc_status)) {
		if (IOCStatus != NULL)
			*IOCStatus = req.ioc_status;
		else
			FUNC4("Reading config page header failed: %s",
			    FUNC3(req.ioc_status));
		return (EIO);
	}
	*header = req.header;
	return (0);
}