#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct mpt_softc {int dummy; } ;
struct mpt_page_memory {int /*<<< orphan*/  map; int /*<<< orphan*/  tag; int /*<<< orphan*/  paddr; TYPE_3__* vaddr; } ;
struct mpt_cfg_page_req {int /*<<< orphan*/  ioc_status; int /*<<< orphan*/  len; int /*<<< orphan*/  page_address; } ;
struct TYPE_8__ {int IOCStatus; } ;
typedef  TYPE_1__ request_t ;
struct TYPE_9__ {int PageType; int /*<<< orphan*/  PageAddress; int /*<<< orphan*/  PageNumber; int /*<<< orphan*/  PageLength; int /*<<< orphan*/  PageVersion; int /*<<< orphan*/  Action; } ;
typedef  TYPE_2__ cfgparms_t ;
struct TYPE_10__ {int PageType; int /*<<< orphan*/  PageNumber; int /*<<< orphan*/  PageLength; int /*<<< orphan*/  PageVersion; } ;
typedef  TYPE_3__ CONFIG_PAGE_HEADER ;

/* Variables and functions */
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_POSTWRITE ; 
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int ENOMEM ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  MPI_CONFIG_ACTION_PAGE_READ_CURRENT ; 
 int MPI_CONFIG_PAGETYPE_MASK ; 
 int MPI_IOCSTATUS_MASK ; 
 int MPI_IOCSTATUS_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mpt_softc*,TYPE_1__*) ; 
 TYPE_1__* FUNC4 (struct mpt_softc*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mpt_softc*,TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mpt_softc*,char*) ; 

__attribute__((used)) static int
FUNC7(struct mpt_softc *mpt, struct mpt_cfg_page_req *page_req,
    struct mpt_page_memory *mpt_page)
{
	CONFIG_PAGE_HEADER *hdr;
	request_t    *req;
	cfgparms_t    params;
	int	      error;

	req = FUNC4(mpt, TRUE);
	if (req == NULL) {
		FUNC6(mpt, "mpt_user_read_cfg_page: Get request failed!\n");
		return (ENOMEM);
	}

	hdr = mpt_page->vaddr;
	params.Action = MPI_CONFIG_ACTION_PAGE_READ_CURRENT;
	params.PageVersion = hdr->PageVersion;
	params.PageLength = hdr->PageLength;
	params.PageNumber = hdr->PageNumber;
	params.PageType = hdr->PageType & MPI_CONFIG_PAGETYPE_MASK;
	params.PageAddress = FUNC2(page_req->page_address);
	FUNC0(mpt_page->tag, mpt_page->map,
	    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
	error = FUNC5(mpt, req, &params, mpt_page->paddr,
	    FUNC2(page_req->len), TRUE, 5000);
	if (error != 0) {
		FUNC6(mpt, "mpt_user_read_cfg_page timed out\n");
		return (ETIMEDOUT);
	}

	page_req->ioc_status = FUNC1(req->IOCStatus);
	if ((req->IOCStatus & MPI_IOCSTATUS_MASK) == MPI_IOCSTATUS_SUCCESS)
		FUNC0(mpt_page->tag, mpt_page->map,
		    BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
	FUNC3(mpt, req);
	return (0);
}