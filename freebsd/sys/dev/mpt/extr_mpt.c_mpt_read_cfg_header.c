
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct mpt_softc {int dummy; } ;
struct TYPE_8__ {int IOCStatus; TYPE_3__* req_vbuf; } ;
typedef TYPE_1__ request_t ;
struct TYPE_9__ {int PageNumber; int PageType; int PageAddress; scalar_t__ PageLength; scalar_t__ PageVersion; int Action; } ;
typedef TYPE_2__ cfgparms_t ;
struct TYPE_10__ {int Header; } ;
typedef TYPE_3__ MSG_CONFIG ;
typedef int CONFIG_PAGE_HEADER ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int ETIMEDOUT ;
 int MPI_CONFIG_ACTION_PAGE_HEADER ;

 int MPI_IOCSTATUS_MASK ;

 int MPT_PRT_DEBUG ;
 int bcopy (int *,int *,int) ;
 int mpt_free_request (struct mpt_softc*,TYPE_1__*) ;
 TYPE_1__* mpt_get_request (struct mpt_softc*,int) ;
 int mpt_issue_cfg_req (struct mpt_softc*,TYPE_1__*,TYPE_2__*,int ,int ,int,int) ;
 int mpt_lprt (struct mpt_softc*,int ,char*,int,int,int ) ;
 int mpt_prt (struct mpt_softc*,char*,...) ;

int
mpt_read_cfg_header(struct mpt_softc *mpt, int PageType, int PageNumber,
      uint32_t PageAddress, CONFIG_PAGE_HEADER *rslt,
      int sleep_ok, int timeout_ms)
{
 request_t *req;
 cfgparms_t params;
 MSG_CONFIG *cfgp;
 int error;

 req = mpt_get_request(mpt, sleep_ok);
 if (req == ((void*)0)) {
  mpt_prt(mpt, "mpt_read_cfg_header: Get request failed!\n");
  return (ENOMEM);
 }

 params.Action = MPI_CONFIG_ACTION_PAGE_HEADER;
 params.PageVersion = 0;
 params.PageLength = 0;
 params.PageNumber = PageNumber;
 params.PageType = PageType;
 params.PageAddress = PageAddress;
 error = mpt_issue_cfg_req(mpt, req, &params, 0, 0,
      sleep_ok, timeout_ms);
 if (error != 0) {






  mpt_prt(mpt, "read_cfg_header timed out\n");
  return (ETIMEDOUT);
 }

        switch (req->IOCStatus & MPI_IOCSTATUS_MASK) {
 case 128:
  cfgp = req->req_vbuf;
  bcopy(&cfgp->Header, rslt, sizeof(*rslt));
  error = 0;
  break;
 case 129:
  mpt_lprt(mpt, MPT_PRT_DEBUG,
      "Invalid Page Type %d Number %d Addr 0x%0x\n",
      PageType, PageNumber, PageAddress);
  error = EINVAL;
  break;
 default:
  mpt_prt(mpt, "mpt_read_cfg_header: Config Info Status %x\n",
   req->IOCStatus);
  error = EIO;
  break;
 }
 mpt_free_request(mpt, req);
 return (error);
}
