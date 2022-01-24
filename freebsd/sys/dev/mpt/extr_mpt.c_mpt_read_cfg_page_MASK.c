#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct mpt_softc {int dummy; } ;
struct TYPE_10__ {int req_pbuf; int IOCStatus; scalar_t__ req_vbuf; } ;
typedef  TYPE_1__ request_t ;
struct TYPE_11__ {int Action; int PageType; int /*<<< orphan*/  PageAddress; int /*<<< orphan*/  PageNumber; int /*<<< orphan*/  PageLength; int /*<<< orphan*/  PageVersion; } ;
typedef  TYPE_2__ cfgparms_t ;
struct TYPE_12__ {int PageType; int /*<<< orphan*/  PageNumber; int /*<<< orphan*/  PageLength; int /*<<< orphan*/  PageVersion; } ;
typedef  TYPE_3__ CONFIG_PAGE_HEADER ;

/* Variables and functions */
 int MPI_CONFIG_PAGETYPE_MASK ; 
 int MPI_IOCSTATUS_MASK ; 
 int MPI_IOCSTATUS_SUCCESS ; 
 int FUNC0 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct mpt_softc*,TYPE_1__*) ; 
 TYPE_1__* FUNC3 (struct mpt_softc*,int) ; 
 int FUNC4 (struct mpt_softc*,TYPE_1__*,TYPE_2__*,int,size_t,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mpt_softc*,char*,...) ; 

int
FUNC6(struct mpt_softc *mpt, int Action, uint32_t PageAddress,
		  CONFIG_PAGE_HEADER *hdr, size_t len, int sleep_ok,
		  int timeout_ms)
{
	request_t    *req;
	cfgparms_t    params;
	int	      error;

	req = FUNC3(mpt, sleep_ok);
	if (req == NULL) {
		FUNC5(mpt, "mpt_read_cfg_page: Get request failed!\n");
		return (-1);
	}

	params.Action = Action;
	params.PageVersion = hdr->PageVersion;
	params.PageLength = hdr->PageLength;
	params.PageNumber = hdr->PageNumber;
	params.PageType = hdr->PageType & MPI_CONFIG_PAGETYPE_MASK;
	params.PageAddress = PageAddress;
	error = FUNC4(mpt, req, &params,
				  req->req_pbuf + FUNC0(mpt),
				  len, sleep_ok, timeout_ms);
	if (error != 0) {
		FUNC5(mpt, "read_cfg_page(%d) timed out\n", Action);
		return (-1);
	}

	if ((req->IOCStatus & MPI_IOCSTATUS_MASK) != MPI_IOCSTATUS_SUCCESS) {
		FUNC5(mpt, "mpt_read_cfg_page: Config Info Status %x\n",
			req->IOCStatus);
		FUNC2(mpt, req);
		return (-1);
	}
	FUNC1(hdr, ((uint8_t *)req->req_vbuf)+FUNC0(mpt), len);
	FUNC2(mpt, req);
	return (0);
}