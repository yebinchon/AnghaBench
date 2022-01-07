
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct mpt_softc {int dummy; } ;
struct TYPE_12__ {int PageType; int PageNumber; } ;
struct mpt_cfg_page_req {TYPE_8__ header; int ioc_status; int page_address; } ;
struct TYPE_9__ {int IOCStatus; TYPE_3__* req_vbuf; } ;
typedef TYPE_1__ request_t ;
struct TYPE_10__ {int PageAddress; int PageType; int PageNumber; scalar_t__ PageLength; scalar_t__ PageVersion; int Action; } ;
typedef TYPE_2__ cfgparms_t ;
struct TYPE_11__ {int Header; } ;
typedef TYPE_3__ MSG_CONFIG ;


 int ENOMEM ;
 int ETIMEDOUT ;
 int MPI_CONFIG_ACTION_PAGE_HEADER ;
 int MPI_IOCSTATUS_MASK ;
 int MPI_IOCSTATUS_SUCCESS ;
 int TRUE ;
 int bcopy (int *,TYPE_8__*,int) ;
 int htole16 (int) ;
 int le32toh (int ) ;
 int mpt_free_request (struct mpt_softc*,TYPE_1__*) ;
 TYPE_1__* mpt_get_request (struct mpt_softc*,int ) ;
 int mpt_issue_cfg_req (struct mpt_softc*,TYPE_1__*,TYPE_2__*,int ,int ,int ,int) ;
 int mpt_prt (struct mpt_softc*,char*) ;

__attribute__((used)) static int
mpt_user_read_cfg_header(struct mpt_softc *mpt,
    struct mpt_cfg_page_req *page_req)
{
 request_t *req;
 cfgparms_t params;
 MSG_CONFIG *cfgp;
 int error;

 req = mpt_get_request(mpt, TRUE);
 if (req == ((void*)0)) {
  mpt_prt(mpt, "mpt_user_read_cfg_header: Get request failed!\n");
  return (ENOMEM);
 }

 params.Action = MPI_CONFIG_ACTION_PAGE_HEADER;
 params.PageVersion = 0;
 params.PageLength = 0;
 params.PageNumber = page_req->header.PageNumber;
 params.PageType = page_req->header.PageType;
 params.PageAddress = le32toh(page_req->page_address);
 error = mpt_issue_cfg_req(mpt, req, &params, 0, 0,
      TRUE, 5000);
 if (error != 0) {






  mpt_prt(mpt, "read_cfg_header timed out\n");
  return (ETIMEDOUT);
 }

 page_req->ioc_status = htole16(req->IOCStatus);
 if ((req->IOCStatus & MPI_IOCSTATUS_MASK) == MPI_IOCSTATUS_SUCCESS) {
  cfgp = req->req_vbuf;
  bcopy(&cfgp->Header, &page_req->header,
      sizeof(page_req->header));
 }
 mpt_free_request(mpt, req);
 return (0);
}
