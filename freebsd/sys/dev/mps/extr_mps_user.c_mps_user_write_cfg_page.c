
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct mps_softc {int dummy; } ;
struct TYPE_4__ {int PageType; int PageNumber; int PageLength; int PageVersion; } ;
struct TYPE_3__ {TYPE_2__ Struct; } ;
struct mps_config_params {int status; int * callback; void* length; void* buffer; void* page_address; int action; TYPE_1__ hdr; } ;
struct mps_cfg_page_req {int ioc_status; int len; int page_address; } ;
typedef TYPE_2__ MPI2_CONFIG_PAGE_HEADER ;


 int EINVAL ;
 int ETIMEDOUT ;
 int MPI2_CONFIG_ACTION_PAGE_WRITE_CURRENT ;
 int MPI2_CONFIG_PAGEATTR_CHANGEABLE ;
 int MPI2_CONFIG_PAGEATTR_MASK ;
 int MPI2_CONFIG_PAGEATTR_PERSISTENT ;
 int MPI2_CONFIG_PAGETYPE_MASK ;
 int htole16 (int ) ;
 void* le32toh (int ) ;
 int mps_printf (struct mps_softc*,char*,...) ;
 int mps_write_config_page (struct mps_softc*,struct mps_config_params*) ;

__attribute__((used)) static int
mps_user_write_cfg_page(struct mps_softc *sc,
    struct mps_cfg_page_req *page_req, void *buf)
{
 MPI2_CONFIG_PAGE_HEADER *reqhdr, *hdr;
 struct mps_config_params params;
 u_int hdr_attr;
 int error;

 reqhdr = buf;
 hdr = &params.hdr.Struct;
 hdr_attr = reqhdr->PageType & MPI2_CONFIG_PAGEATTR_MASK;
 if (hdr_attr != MPI2_CONFIG_PAGEATTR_CHANGEABLE &&
     hdr_attr != MPI2_CONFIG_PAGEATTR_PERSISTENT) {
  mps_printf(sc, "page type 0x%x not changeable\n",
   reqhdr->PageType & MPI2_CONFIG_PAGETYPE_MASK);
  return (EINVAL);
 }






 hdr->PageVersion = reqhdr->PageVersion;
 hdr->PageLength = reqhdr->PageLength;
 hdr->PageNumber = reqhdr->PageNumber;
 hdr->PageType = reqhdr->PageType;
 params.action = MPI2_CONFIG_ACTION_PAGE_WRITE_CURRENT;
 params.page_address = le32toh(page_req->page_address);
 params.buffer = buf;
 params.length = le32toh(page_req->len);
 params.callback = ((void*)0);

 if ((error = mps_write_config_page(sc, &params)) != 0) {
  mps_printf(sc, "mps_write_cfg_page timed out\n");
  return (ETIMEDOUT);
 }

 page_req->ioc_status = htole16(params.status);
 return (0);
}
