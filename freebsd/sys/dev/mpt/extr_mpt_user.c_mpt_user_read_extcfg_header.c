
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct mpt_softc {int dummy; } ;
struct TYPE_11__ {int ExtPageType; int ExtPageLength; int PageType; int PageNumber; int PageVersion; } ;
struct mpt_ext_cfg_page_req {TYPE_2__ header; int ioc_status; int page_address; } ;
struct TYPE_12__ {int IOCStatus; TYPE_5__* req_vbuf; } ;
typedef TYPE_3__ request_t ;
struct TYPE_13__ {scalar_t__ ExtPageLength; int ExtPageType; int PageAddress; int PageType; int PageNumber; scalar_t__ PageLength; int PageVersion; int Action; } ;
typedef TYPE_4__ cfgparms_t ;
struct TYPE_10__ {int PageType; int PageNumber; int PageVersion; } ;
struct TYPE_14__ {int ExtPageType; int ExtPageLength; TYPE_1__ Header; } ;
typedef TYPE_5__ MSG_CONFIG_REPLY ;


 int ENOMEM ;
 int ETIMEDOUT ;
 int MPI_CONFIG_ACTION_PAGE_HEADER ;
 int MPI_CONFIG_PAGETYPE_EXTENDED ;
 int MPI_IOCSTATUS_MASK ;
 int MPI_IOCSTATUS_SUCCESS ;
 int TRUE ;
 int htole16 (int) ;
 int le32toh (int ) ;
 int mpt_free_request (struct mpt_softc*,TYPE_3__*) ;
 TYPE_3__* mpt_get_request (struct mpt_softc*,int ) ;
 int mpt_issue_cfg_req (struct mpt_softc*,TYPE_3__*,TYPE_4__*,int ,int ,int ,int) ;
 int mpt_prt (struct mpt_softc*,char*) ;

__attribute__((used)) static int
mpt_user_read_extcfg_header(struct mpt_softc *mpt,
    struct mpt_ext_cfg_page_req *ext_page_req)
{
 request_t *req;
 cfgparms_t params;
 MSG_CONFIG_REPLY *cfgp;
 int error;

 req = mpt_get_request(mpt, TRUE);
 if (req == ((void*)0)) {
  mpt_prt(mpt, "mpt_user_read_extcfg_header: Get request failed!\n");
  return (ENOMEM);
 }

 params.Action = MPI_CONFIG_ACTION_PAGE_HEADER;
 params.PageVersion = ext_page_req->header.PageVersion;
 params.PageLength = 0;
 params.PageNumber = ext_page_req->header.PageNumber;
 params.PageType = MPI_CONFIG_PAGETYPE_EXTENDED;
 params.PageAddress = le32toh(ext_page_req->page_address);
 params.ExtPageType = ext_page_req->header.ExtPageType;
 params.ExtPageLength = 0;
 error = mpt_issue_cfg_req(mpt, req, &params, 0, 0,
      TRUE, 5000);
 if (error != 0) {






  mpt_prt(mpt, "mpt_user_read_extcfg_header timed out\n");
  return (ETIMEDOUT);
 }

 ext_page_req->ioc_status = htole16(req->IOCStatus);
 if ((req->IOCStatus & MPI_IOCSTATUS_MASK) == MPI_IOCSTATUS_SUCCESS) {
  cfgp = req->req_vbuf;
  ext_page_req->header.PageVersion = cfgp->Header.PageVersion;
  ext_page_req->header.PageNumber = cfgp->Header.PageNumber;
  ext_page_req->header.PageType = cfgp->Header.PageType;
  ext_page_req->header.ExtPageLength = cfgp->ExtPageLength;
  ext_page_req->header.ExtPageType = cfgp->ExtPageType;
 }
 mpt_free_request(mpt, req);
 return (0);
}
