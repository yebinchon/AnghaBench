
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mpr_softc {int buffer_dmat; } ;
struct TYPE_7__ {scalar_t__ PageType; int PageVersion; int PageLength; int PageNumber; } ;
struct TYPE_6__ {scalar_t__ PageType; int PageVersion; int PageNumber; int ExtPageLength; int ExtPageType; } ;
struct TYPE_8__ {TYPE_2__ Struct; TYPE_1__ Ext; } ;
struct mpr_config_params {int (* callback ) (struct mpr_softc*,struct mpr_config_params*) ;TYPE_3__ hdr; void* status; } ;
struct mpr_command {int cm_flags; scalar_t__ cm_reply; int cm_dmamap; int * cm_data; struct mpr_config_params* cm_complete_data; } ;
struct TYPE_9__ {scalar_t__ PageType; int PageVersion; int PageLength; int PageNumber; } ;
struct TYPE_10__ {TYPE_4__ Header; int ExtPageLength; int ExtPageType; void* IOCStatus; } ;
typedef TYPE_5__ MPI2_CONFIG_REPLY ;


 int BUS_DMASYNC_POSTREAD ;
 scalar_t__ MPI2_CONFIG_PAGETYPE_EXTENDED ;
 void* MPI2_IOCSTATUS_BUSY ;
 int MPR_CM_FLAGS_ERROR_MASK ;
 int MPR_FUNCTRACE (struct mpr_softc*) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int mpr_free_command (struct mpr_softc*,struct mpr_command*) ;
 int stub1 (struct mpr_softc*,struct mpr_config_params*) ;

__attribute__((used)) static void
mpr_config_complete(struct mpr_softc *sc, struct mpr_command *cm)
{
 MPI2_CONFIG_REPLY *reply;
 struct mpr_config_params *params;

 MPR_FUNCTRACE(sc);
 params = cm->cm_complete_data;

 if (cm->cm_data != ((void*)0)) {
  bus_dmamap_sync(sc->buffer_dmat, cm->cm_dmamap,
      BUS_DMASYNC_POSTREAD);
  bus_dmamap_unload(sc->buffer_dmat, cm->cm_dmamap);
 }





 if ((cm->cm_flags & MPR_CM_FLAGS_ERROR_MASK) != 0) {
  params->status = MPI2_IOCSTATUS_BUSY;
  goto done;
 }

 reply = (MPI2_CONFIG_REPLY *)cm->cm_reply;
 if (reply == ((void*)0)) {
  params->status = MPI2_IOCSTATUS_BUSY;
  goto done;
 }
 params->status = reply->IOCStatus;
 if (params->hdr.Struct.PageType == MPI2_CONFIG_PAGETYPE_EXTENDED) {
  params->hdr.Ext.ExtPageType = reply->ExtPageType;
  params->hdr.Ext.ExtPageLength = reply->ExtPageLength;
  params->hdr.Ext.PageType = reply->Header.PageType;
  params->hdr.Ext.PageNumber = reply->Header.PageNumber;
  params->hdr.Ext.PageVersion = reply->Header.PageVersion;
 } else {
  params->hdr.Struct.PageType = reply->Header.PageType;
  params->hdr.Struct.PageNumber = reply->Header.PageNumber;
  params->hdr.Struct.PageLength = reply->Header.PageLength;
  params->hdr.Struct.PageVersion = reply->Header.PageVersion;
 }

done:
 mpr_free_command(sc, cm);
 if (params->callback != ((void*)0))
  params->callback(sc, params);

 return;
}
