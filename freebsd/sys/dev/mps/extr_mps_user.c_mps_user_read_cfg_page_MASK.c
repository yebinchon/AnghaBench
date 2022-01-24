#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mps_softc {int dummy; } ;
struct TYPE_4__ {int PageType; int /*<<< orphan*/  PageNumber; int /*<<< orphan*/  PageLength; int /*<<< orphan*/  PageVersion; } ;
struct TYPE_3__ {TYPE_2__ Struct; } ;
struct mps_config_params {int /*<<< orphan*/  status; int /*<<< orphan*/ * callback; void* length; void* buffer; void* page_address; int /*<<< orphan*/  action; TYPE_1__ hdr; } ;
struct mps_cfg_page_req {int /*<<< orphan*/  ioc_status; int /*<<< orphan*/  len; int /*<<< orphan*/  page_address; } ;
typedef  TYPE_2__ MPI2_CONFIG_PAGE_HEADER ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  MPI2_CONFIG_ACTION_PAGE_READ_CURRENT ; 
 int MPI2_CONFIG_PAGETYPE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mps_softc*,char*) ; 
 int FUNC3 (struct mps_softc*,struct mps_config_params*) ; 

__attribute__((used)) static int
FUNC4(struct mps_softc *sc, struct mps_cfg_page_req *page_req,
    void *buf)
{
	MPI2_CONFIG_PAGE_HEADER *reqhdr, *hdr;
	struct mps_config_params params;
	int	      error;

	reqhdr = buf;
	hdr = &params.hdr.Struct;
	hdr->PageVersion = reqhdr->PageVersion;
	hdr->PageLength = reqhdr->PageLength;
	hdr->PageNumber = reqhdr->PageNumber;
	hdr->PageType = reqhdr->PageType & MPI2_CONFIG_PAGETYPE_MASK;
	params.action = MPI2_CONFIG_ACTION_PAGE_READ_CURRENT;
	params.page_address = FUNC1(page_req->page_address);
	params.buffer = buf;
	params.length = FUNC1(page_req->len);
	params.callback = NULL;

	if ((error = FUNC3(sc, &params)) != 0) {
		FUNC2(sc, "mps_user_read_cfg_page timed out\n");
		return (ETIMEDOUT);
	}

	page_req->ioc_status = FUNC0(params.status);
	return (0);
}