
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32_t ;
struct mpt_softc {int dummy; } ;
struct TYPE_12__ {int IOCStatus; TYPE_4__* req_vbuf; } ;
typedef TYPE_2__ request_t ;
struct TYPE_13__ {int PageVersion; int PageNumber; int ExtPageType; scalar_t__ ExtPageLength; int PageAddress; int PageType; scalar_t__ PageLength; int Action; } ;
typedef TYPE_3__ cfgparms_t ;
struct TYPE_15__ {int ExtPageType; int ExtPageLength; int PageType; int PageNumber; int PageVersion; } ;
struct TYPE_11__ {int PageType; int PageNumber; int PageVersion; } ;
struct TYPE_14__ {int ExtPageType; int ExtPageLength; TYPE_1__ Header; } ;
typedef TYPE_4__ MSG_CONFIG_REPLY ;
typedef TYPE_5__ CONFIG_EXTENDED_PAGE_HEADER ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int ETIMEDOUT ;
 int MPI_CONFIG_ACTION_PAGE_HEADER ;
 int MPI_CONFIG_PAGETYPE_EXTENDED ;

 int MPI_IOCSTATUS_MASK ;

 int MPT_PRT_DEBUG ;
 int le16toh (int ) ;
 int mpt_free_request (struct mpt_softc*,TYPE_2__*) ;
 TYPE_2__* mpt_get_request (struct mpt_softc*,int) ;
 int mpt_issue_cfg_req (struct mpt_softc*,TYPE_2__*,TYPE_3__*,int ,int ,int,int) ;
 int mpt_lprt (struct mpt_softc*,int ,char*,int ,int,int ) ;
 int mpt_prt (struct mpt_softc*,char*,...) ;

int
mpt_read_extcfg_header(struct mpt_softc *mpt, int PageVersion, int PageNumber,
         uint32_t PageAddress, int ExtPageType,
         CONFIG_EXTENDED_PAGE_HEADER *rslt,
         int sleep_ok, int timeout_ms)
{
 request_t *req;
 cfgparms_t params;
 MSG_CONFIG_REPLY *cfgp;
 int error;

 req = mpt_get_request(mpt, sleep_ok);
 if (req == ((void*)0)) {
  mpt_prt(mpt, "mpt_extread_cfg_header: Get request failed!\n");
  return (ENOMEM);
 }

 params.Action = MPI_CONFIG_ACTION_PAGE_HEADER;
 params.PageVersion = PageVersion;
 params.PageLength = 0;
 params.PageNumber = PageNumber;
 params.PageType = MPI_CONFIG_PAGETYPE_EXTENDED;
 params.PageAddress = PageAddress;
 params.ExtPageType = ExtPageType;
 params.ExtPageLength = 0;
 error = mpt_issue_cfg_req(mpt, req, &params, 0, 0,
      sleep_ok, timeout_ms);
 if (error != 0) {






  mpt_prt(mpt, "read_extcfg_header timed out\n");
  return (ETIMEDOUT);
 }

        switch (req->IOCStatus & MPI_IOCSTATUS_MASK) {
 case 128:
  cfgp = req->req_vbuf;
  rslt->PageVersion = cfgp->Header.PageVersion;
  rslt->PageNumber = cfgp->Header.PageNumber;
  rslt->PageType = cfgp->Header.PageType;
  rslt->ExtPageLength = le16toh(cfgp->ExtPageLength);
  rslt->ExtPageType = cfgp->ExtPageType;
  error = 0;
  break;
 case 129:
  mpt_lprt(mpt, MPT_PRT_DEBUG,
      "Invalid Page Type %d Number %d Addr 0x%0x\n",
      MPI_CONFIG_PAGETYPE_EXTENDED, PageNumber, PageAddress);
  error = EINVAL;
  break;
 default:
  mpt_prt(mpt, "mpt_read_extcfg_header: Config Info Status %x\n",
   req->IOCStatus);
  error = EIO;
  break;
 }
 mpt_free_request(mpt, req);
 return (error);
}
