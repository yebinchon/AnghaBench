
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct mps_softc {int mps_flags; } ;
struct TYPE_13__ {scalar_t__ PageType; int PageVersion; scalar_t__ PageLength; int PageNumber; } ;
struct TYPE_14__ {int PageVersion; int PageNumber; int ExtPageLength; int ExtPageType; } ;
struct TYPE_8__ {TYPE_6__ Struct; TYPE_7__ Ext; } ;
struct mps_config_params {int * callback; int length; int * buffer; TYPE_1__ hdr; int page_address; int action; } ;
struct TYPE_10__ {int RequestFlags; } ;
struct TYPE_11__ {TYPE_3__ Default; } ;
struct mps_command {int cm_sglsize; int cm_flags; int (* cm_complete ) (struct mps_softc*,struct mps_command*) ;struct mps_config_params* cm_complete_data; TYPE_4__ cm_desc; int * cm_sge; int * cm_data; int cm_length; scalar_t__ cm_req; } ;
struct TYPE_9__ {scalar_t__ PageType; int PageVersion; scalar_t__ PageLength; int PageNumber; } ;
struct TYPE_12__ {int PageBufferSGE; TYPE_2__ Header; int ExtPageLength; int ExtPageType; int PageAddress; scalar_t__ ChainOffset; scalar_t__ SGLFlags; int Action; int Function; } ;
typedef int MPI2_SGE_IO_UNION ;
typedef TYPE_5__ MPI2_CONFIG_REQUEST ;
typedef TYPE_6__ MPI2_CONFIG_PAGE_HEADER ;
typedef TYPE_7__ MPI2_CONFIG_EXTENDED_PAGE_HEADER ;


 int CAN_SLEEP ;
 int EBUSY ;
 scalar_t__ MPI2_CONFIG_PAGETYPE_EXTENDED ;
 int MPI2_FUNCTION_CONFIG ;
 int MPI2_REQ_DESCRIPT_FLAGS_DEFAULT_TYPE ;
 int MPS_CM_FLAGS_DATAIN ;
 int MPS_CM_FLAGS_SGE_SIMPLE ;
 int MPS_FAULT ;
 int MPS_FLAGS_BUSY ;
 struct mps_command* mps_alloc_command (struct mps_softc*) ;
 int mps_config_complete (struct mps_softc*,struct mps_command*) ;
 int mps_dprint (struct mps_softc*,int ,char*,int) ;
 int mps_free_command (struct mps_softc*,struct mps_command*) ;
 int mps_map_command (struct mps_softc*,struct mps_command*) ;
 int mps_wait_command (struct mps_softc*,struct mps_command**,int ,int ) ;

int
mps_read_config_page(struct mps_softc *sc, struct mps_config_params *params)
{
 MPI2_CONFIG_REQUEST *req;
 struct mps_command *cm;
 int error;

 if (sc->mps_flags & MPS_FLAGS_BUSY) {
  return (EBUSY);
 }

 cm = mps_alloc_command(sc);
 if (cm == ((void*)0)) {
  return (EBUSY);
 }

 req = (MPI2_CONFIG_REQUEST *)cm->cm_req;
 req->Function = MPI2_FUNCTION_CONFIG;
 req->Action = params->action;
 req->SGLFlags = 0;
 req->ChainOffset = 0;
 req->PageAddress = params->page_address;
 if (params->hdr.Struct.PageType == MPI2_CONFIG_PAGETYPE_EXTENDED) {
  MPI2_CONFIG_EXTENDED_PAGE_HEADER *hdr;

  hdr = &params->hdr.Ext;
  req->ExtPageType = hdr->ExtPageType;
  req->ExtPageLength = hdr->ExtPageLength;
  req->Header.PageType = MPI2_CONFIG_PAGETYPE_EXTENDED;
  req->Header.PageLength = 0;
  req->Header.PageNumber = hdr->PageNumber;
  req->Header.PageVersion = hdr->PageVersion;
 } else {
  MPI2_CONFIG_PAGE_HEADER *hdr;

  hdr = &params->hdr.Struct;
  req->Header.PageType = hdr->PageType;
  req->Header.PageNumber = hdr->PageNumber;
  req->Header.PageLength = hdr->PageLength;
  req->Header.PageVersion = hdr->PageVersion;
 }

 cm->cm_data = params->buffer;
 cm->cm_length = params->length;
 if (cm->cm_data != ((void*)0)) {
  cm->cm_sge = &req->PageBufferSGE;
  cm->cm_sglsize = sizeof(MPI2_SGE_IO_UNION);
  cm->cm_flags = MPS_CM_FLAGS_SGE_SIMPLE | MPS_CM_FLAGS_DATAIN;
 } else
  cm->cm_sge = ((void*)0);
 cm->cm_desc.Default.RequestFlags = MPI2_REQ_DESCRIPT_FLAGS_DEFAULT_TYPE;

 cm->cm_complete_data = params;
 if (params->callback != ((void*)0)) {
  cm->cm_complete = mps_config_complete;
  return (mps_map_command(sc, cm));
 } else {
  error = mps_wait_command(sc, &cm, 0, CAN_SLEEP);
  if (error) {
   mps_dprint(sc, MPS_FAULT,
       "Error %d reading config page\n", error);
   if (cm != ((void*)0))
    mps_free_command(sc, cm);
   return (error);
  }
  mps_config_complete(sc, cm);
 }

 return (0);
}
