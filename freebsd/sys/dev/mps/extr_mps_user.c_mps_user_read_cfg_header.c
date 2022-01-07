
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mps_softc {int dummy; } ;
struct TYPE_6__ {int PageType; int PageNumber; scalar_t__ PageLength; scalar_t__ PageVersion; } ;
struct TYPE_5__ {TYPE_2__ Struct; } ;
struct mps_config_params {int status; int * callback; scalar_t__ length; int * buffer; int page_address; int action; TYPE_1__ hdr; } ;
struct TYPE_7__ {int PageType; int PageNumber; } ;
struct mps_cfg_page_req {int ioc_status; TYPE_4__ header; int page_address; } ;
typedef TYPE_2__ MPI2_CONFIG_PAGE_HEADER ;


 int ETIMEDOUT ;
 int MPI2_CONFIG_ACTION_PAGE_HEADER ;
 int MPI2_IOCSTATUS_MASK ;
 int MPI2_IOCSTATUS_SUCCESS ;
 int bcopy (TYPE_2__*,TYPE_4__*,int) ;
 int htole16 (int ) ;
 int le32toh (int ) ;
 int mps_printf (struct mps_softc*,char*) ;
 int mps_read_config_page (struct mps_softc*,struct mps_config_params*) ;

__attribute__((used)) static int
mps_user_read_cfg_header(struct mps_softc *sc,
    struct mps_cfg_page_req *page_req)
{
 MPI2_CONFIG_PAGE_HEADER *hdr;
 struct mps_config_params params;
 int error;

 hdr = &params.hdr.Struct;
 params.action = MPI2_CONFIG_ACTION_PAGE_HEADER;
 params.page_address = le32toh(page_req->page_address);
 hdr->PageVersion = 0;
 hdr->PageLength = 0;
 hdr->PageNumber = page_req->header.PageNumber;
 hdr->PageType = page_req->header.PageType;
 params.buffer = ((void*)0);
 params.length = 0;
 params.callback = ((void*)0);

 if ((error = mps_read_config_page(sc, &params)) != 0) {






  mps_printf(sc, "read_cfg_header timed out\n");
  return (ETIMEDOUT);
 }

 page_req->ioc_status = htole16(params.status);
 if ((page_req->ioc_status & MPI2_IOCSTATUS_MASK) ==
     MPI2_IOCSTATUS_SUCCESS) {
  bcopy(hdr, &page_req->header, sizeof(page_req->header));
 }

 return (0);
}
