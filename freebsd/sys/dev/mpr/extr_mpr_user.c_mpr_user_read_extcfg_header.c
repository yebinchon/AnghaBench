
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mpr_softc {int dummy; } ;
struct TYPE_5__ {int ExtPageType; scalar_t__ ExtPageLength; int PageType; int PageNumber; int PageVersion; } ;
struct mpr_ext_cfg_page_req {int ioc_status; TYPE_2__ header; int page_address; } ;
struct TYPE_6__ {int ExtPageType; scalar_t__ ExtPageLength; int PageType; int PageNumber; int PageVersion; } ;
struct TYPE_4__ {TYPE_3__ Ext; } ;
struct mpr_config_params {int status; int * callback; scalar_t__ length; int * buffer; int page_address; int action; TYPE_1__ hdr; } ;
typedef TYPE_3__ MPI2_CONFIG_EXTENDED_PAGE_HEADER ;


 int ETIMEDOUT ;
 int MPI2_CONFIG_ACTION_PAGE_HEADER ;
 int MPI2_CONFIG_PAGETYPE_EXTENDED ;
 int MPI2_IOCSTATUS_MASK ;
 int MPI2_IOCSTATUS_SUCCESS ;
 int htole16 (int ) ;
 int le32toh (int ) ;
 int mpr_printf (struct mpr_softc*,char*) ;
 int mpr_read_config_page (struct mpr_softc*,struct mpr_config_params*) ;

__attribute__((used)) static int
mpr_user_read_extcfg_header(struct mpr_softc *sc,
    struct mpr_ext_cfg_page_req *ext_page_req)
{
 MPI2_CONFIG_EXTENDED_PAGE_HEADER *hdr;
 struct mpr_config_params params;
 int error;

 hdr = &params.hdr.Ext;
 params.action = MPI2_CONFIG_ACTION_PAGE_HEADER;
 hdr->PageVersion = ext_page_req->header.PageVersion;
 hdr->PageType = MPI2_CONFIG_PAGETYPE_EXTENDED;
 hdr->ExtPageLength = 0;
 hdr->PageNumber = ext_page_req->header.PageNumber;
 hdr->ExtPageType = ext_page_req->header.ExtPageType;
 params.page_address = le32toh(ext_page_req->page_address);
 params.buffer = ((void*)0);
 params.length = 0;
 params.callback = ((void*)0);

 if ((error = mpr_read_config_page(sc, &params)) != 0) {






  mpr_printf(sc, "mpr_user_read_extcfg_header timed out\n");
  return (ETIMEDOUT);
 }

 ext_page_req->ioc_status = htole16(params.status);
 if ((ext_page_req->ioc_status & MPI2_IOCSTATUS_MASK) ==
     MPI2_IOCSTATUS_SUCCESS) {
  ext_page_req->header.PageVersion = hdr->PageVersion;
  ext_page_req->header.PageNumber = hdr->PageNumber;
  ext_page_req->header.PageType = hdr->PageType;
  ext_page_req->header.ExtPageLength = hdr->ExtPageLength;
  ext_page_req->header.ExtPageType = hdr->ExtPageType;
 }

 return (0);
}
