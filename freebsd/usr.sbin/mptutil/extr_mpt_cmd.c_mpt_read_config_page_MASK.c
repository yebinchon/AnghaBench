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
struct TYPE_2__ {int PageLength; void* PageNumber; void* PageType; } ;
struct mpt_cfg_page_req {int len; int /*<<< orphan*/  ioc_status; TYPE_1__ header; void* buf; int /*<<< orphan*/  page_address; } ;
typedef  int /*<<< orphan*/  req ;
typedef  void* U8 ;
typedef  int /*<<< orphan*/  U32 ;
typedef  int /*<<< orphan*/  U16 ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MPI_IOCSTATUS_SUCCESS ; 
 int /*<<< orphan*/  MPTIO_READ_CFG_HEADER ; 
 int /*<<< orphan*/  MPTIO_READ_CFG_PAGE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mpt_cfg_page_req*,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,struct mpt_cfg_page_req*) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

void *
FUNC8(int fd, U8 PageType, U8 PageNumber, U32 PageAddress,
    U16 *IOCStatus)
{
	struct mpt_cfg_page_req req;
	void *buf;
	int error;

	if (IOCStatus != NULL)
		*IOCStatus = MPI_IOCSTATUS_SUCCESS;
	FUNC2(&req, sizeof(req));
	req.header.PageType = PageType;
	req.header.PageNumber = PageNumber;
	req.page_address = PageAddress;
	if (FUNC4(fd, MPTIO_READ_CFG_HEADER, &req) < 0)
		return (NULL);
	if (!FUNC0(req.ioc_status)) {
		if (IOCStatus != NULL)
			*IOCStatus = req.ioc_status;
		else
			FUNC7("Reading config page header failed: %s",
			    FUNC6(req.ioc_status));
		errno = EIO;
		return (NULL);
	}
	req.len = req.header.PageLength * 4;
	buf = FUNC5(req.len);
	req.buf = buf;
	FUNC1(&req.header, buf, sizeof(req.header));
	if (FUNC4(fd, MPTIO_READ_CFG_PAGE, &req) < 0) {
		error = errno;
		FUNC3(buf);
		errno = error;
		return (NULL);
	}
	if (!FUNC0(req.ioc_status)) {
		if (IOCStatus != NULL)
			*IOCStatus = req.ioc_status;
		else
			FUNC7("Reading config page failed: %s",
			    FUNC6(req.ioc_status));
		FUNC3(buf);
		errno = EIO;
		return (NULL);
	}
	return (buf);
}