
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct mpt_softc {int dummy; } ;
struct TYPE_9__ {int req_pbuf; int IOCStatus; scalar_t__ req_vbuf; } ;
typedef TYPE_1__ request_t ;
struct TYPE_10__ {int Action; int ExtPageLength; int ExtPageType; int PageAddress; int PageType; int PageNumber; scalar_t__ PageLength; int PageVersion; } ;
typedef TYPE_2__ cfgparms_t ;
struct TYPE_11__ {int ExtPageLength; int ExtPageType; int PageNumber; int PageVersion; } ;
typedef TYPE_3__ CONFIG_EXTENDED_PAGE_HEADER ;


 int MPI_CONFIG_PAGETYPE_EXTENDED ;
 int MPI_IOCSTATUS_MASK ;
 int MPI_IOCSTATUS_SUCCESS ;
 int MPT_RQSL (struct mpt_softc*) ;
 int memcpy (void*,int *,size_t) ;
 int mpt_free_request (struct mpt_softc*,TYPE_1__*) ;
 TYPE_1__* mpt_get_request (struct mpt_softc*,int) ;
 int mpt_issue_cfg_req (struct mpt_softc*,TYPE_1__*,TYPE_2__*,int,size_t,int,int) ;
 int mpt_prt (struct mpt_softc*,char*,...) ;

int
mpt_read_extcfg_page(struct mpt_softc *mpt, int Action, uint32_t PageAddress,
       CONFIG_EXTENDED_PAGE_HEADER *hdr, void *buf, size_t len,
       int sleep_ok, int timeout_ms)
{
 request_t *req;
 cfgparms_t params;
 int error;

 req = mpt_get_request(mpt, sleep_ok);
 if (req == ((void*)0)) {
  mpt_prt(mpt, "mpt_read_extcfg_page: Get request failed!\n");
  return (-1);
 }

 params.Action = Action;
 params.PageVersion = hdr->PageVersion;
 params.PageLength = 0;
 params.PageNumber = hdr->PageNumber;
 params.PageType = MPI_CONFIG_PAGETYPE_EXTENDED;
 params.PageAddress = PageAddress;
 params.ExtPageType = hdr->ExtPageType;
 params.ExtPageLength = hdr->ExtPageLength;
 error = mpt_issue_cfg_req(mpt, req, &params,
      req->req_pbuf + MPT_RQSL(mpt),
      len, sleep_ok, timeout_ms);
 if (error != 0) {
  mpt_prt(mpt, "read_extcfg_page(%d) timed out\n", Action);
  return (-1);
 }

 if ((req->IOCStatus & MPI_IOCSTATUS_MASK) != MPI_IOCSTATUS_SUCCESS) {
  mpt_prt(mpt, "mpt_read_extcfg_page: Config Info Status %x\n",
   req->IOCStatus);
  mpt_free_request(mpt, req);
  return (-1);
 }
 memcpy(buf, ((uint8_t *)req->req_vbuf)+MPT_RQSL(mpt), len);
 mpt_free_request(mpt, req);
 return (0);
}
