
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_int ;
struct mpt_softc {int dummy; } ;
struct mpt_page_memory {int map; int tag; int paddr; TYPE_3__* vaddr; } ;
struct mpt_cfg_page_req {int ioc_status; int len; int page_address; } ;
struct TYPE_8__ {int IOCStatus; } ;
typedef TYPE_1__ request_t ;
struct TYPE_9__ {int PageType; int PageAddress; int PageNumber; int PageLength; int PageVersion; int Action; } ;
typedef TYPE_2__ cfgparms_t ;
struct TYPE_10__ {int PageType; int PageNumber; int PageLength; int PageVersion; } ;
typedef TYPE_3__ CONFIG_PAGE_HEADER ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int EINVAL ;
 int ENOMEM ;
 int ETIMEDOUT ;
 int MPI_CONFIG_ACTION_PAGE_WRITE_CURRENT ;
 int MPI_CONFIG_PAGEATTR_CHANGEABLE ;
 int MPI_CONFIG_PAGEATTR_MASK ;
 int MPI_CONFIG_PAGEATTR_PERSISTENT ;
 int MPI_CONFIG_PAGETYPE_MASK ;
 int TRUE ;
 int bus_dmamap_sync (int ,int ,int) ;
 int htole16 (int ) ;
 int le32toh (int ) ;
 int mpt_free_request (struct mpt_softc*,TYPE_1__*) ;
 TYPE_1__* mpt_get_request (struct mpt_softc*,int ) ;
 int mpt_issue_cfg_req (struct mpt_softc*,TYPE_1__*,TYPE_2__*,int ,int ,int ,int) ;
 int mpt_prt (struct mpt_softc*,char*,...) ;

__attribute__((used)) static int
mpt_user_write_cfg_page(struct mpt_softc *mpt,
    struct mpt_cfg_page_req *page_req, struct mpt_page_memory *mpt_page)
{
 CONFIG_PAGE_HEADER *hdr;
 request_t *req;
 cfgparms_t params;
 u_int hdr_attr;
 int error;

 hdr = mpt_page->vaddr;
 hdr_attr = hdr->PageType & MPI_CONFIG_PAGEATTR_MASK;
 if (hdr_attr != MPI_CONFIG_PAGEATTR_CHANGEABLE &&
     hdr_attr != MPI_CONFIG_PAGEATTR_PERSISTENT) {
  mpt_prt(mpt, "page type 0x%x not changeable\n",
   hdr->PageType & MPI_CONFIG_PAGETYPE_MASK);
  return (EINVAL);
 }
 req = mpt_get_request(mpt, TRUE);
 if (req == ((void*)0))
  return (ENOMEM);

 bus_dmamap_sync(mpt_page->tag, mpt_page->map, BUS_DMASYNC_PREREAD |
     BUS_DMASYNC_PREWRITE);






 params.Action = MPI_CONFIG_ACTION_PAGE_WRITE_CURRENT;
 params.PageVersion = hdr->PageVersion;
 params.PageLength = hdr->PageLength;
 params.PageNumber = hdr->PageNumber;
 params.PageAddress = le32toh(page_req->page_address);





 params.PageType = hdr->PageType;

 error = mpt_issue_cfg_req(mpt, req, &params, mpt_page->paddr,
     le32toh(page_req->len), TRUE, 5000);
 if (error != 0) {
  mpt_prt(mpt, "mpt_write_cfg_page timed out\n");
  return (ETIMEDOUT);
 }

 page_req->ioc_status = htole16(req->IOCStatus);
 bus_dmamap_sync(mpt_page->tag, mpt_page->map, BUS_DMASYNC_POSTREAD |
     BUS_DMASYNC_POSTWRITE);
 mpt_free_request(mpt, req);
 return (0);
}
