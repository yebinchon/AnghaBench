
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
struct mpt_softc {int dummy; } ;
struct TYPE_10__ {int IOCStatus; scalar_t__ req_pbuf; scalar_t__ req_vbuf; } ;
typedef TYPE_1__ request_t ;
struct TYPE_11__ {int Action; int PageType; int PageAddress; int PageNumber; int PageLength; int PageVersion; } ;
typedef TYPE_2__ cfgparms_t ;
typedef scalar_t__ caddr_t ;
struct TYPE_12__ {int PageType; int PageNumber; int PageLength; int PageVersion; } ;
typedef TYPE_3__ CONFIG_PAGE_HEADER ;


 int MPI_CONFIG_PAGEATTR_CHANGEABLE ;
 int MPI_CONFIG_PAGEATTR_MASK ;
 int MPI_CONFIG_PAGEATTR_PERSISTENT ;
 int MPI_CONFIG_PAGETYPE_MASK ;
 int MPI_IOCSTATUS_MASK ;
 int MPI_IOCSTATUS_SUCCESS ;
 scalar_t__ MPT_RQSL (struct mpt_softc*) ;
 int memcpy (scalar_t__,TYPE_3__*,size_t) ;
 int mpt_free_request (struct mpt_softc*,TYPE_1__*) ;
 TYPE_1__* mpt_get_request (struct mpt_softc*,int) ;
 int mpt_issue_cfg_req (struct mpt_softc*,TYPE_1__*,TYPE_2__*,scalar_t__,size_t,int,int) ;
 int mpt_prt (struct mpt_softc*,char*,...) ;

int
mpt_write_cfg_page(struct mpt_softc *mpt, int Action, uint32_t PageAddress,
     CONFIG_PAGE_HEADER *hdr, size_t len, int sleep_ok,
     int timeout_ms)
{
 request_t *req;
 cfgparms_t params;
 u_int hdr_attr;
 int error;

 hdr_attr = hdr->PageType & MPI_CONFIG_PAGEATTR_MASK;
 if (hdr_attr != MPI_CONFIG_PAGEATTR_CHANGEABLE &&
     hdr_attr != MPI_CONFIG_PAGEATTR_PERSISTENT) {
  mpt_prt(mpt, "page type 0x%x not changeable\n",
   hdr->PageType & MPI_CONFIG_PAGETYPE_MASK);
  return (-1);
 }
 req = mpt_get_request(mpt, sleep_ok);
 if (req == ((void*)0))
  return (-1);

 memcpy(((caddr_t)req->req_vbuf) + MPT_RQSL(mpt), hdr, len);






 params.Action = Action;
 params.PageVersion = hdr->PageVersion;
 params.PageLength = hdr->PageLength;
 params.PageNumber = hdr->PageNumber;
 params.PageAddress = PageAddress;





 params.PageType = hdr->PageType;

 error = mpt_issue_cfg_req(mpt, req, &params,
      req->req_pbuf + MPT_RQSL(mpt),
      len, sleep_ok, timeout_ms);
 if (error != 0) {
  mpt_prt(mpt, "mpt_write_cfg_page timed out\n");
  return (-1);
 }

        if ((req->IOCStatus & MPI_IOCSTATUS_MASK) != MPI_IOCSTATUS_SUCCESS) {
  mpt_prt(mpt, "mpt_write_cfg_page: Config Info Status %x\n",
   req->IOCStatus);
  mpt_free_request(mpt, req);
  return (-1);
 }
 mpt_free_request(mpt, req);
 return (0);
}
