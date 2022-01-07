
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int RequestFlags; scalar_t__ SMID; } ;
union mfi_mpi2_request_descriptor {TYPE_1__ header; } ;
typedef scalar_t__ uint16_t ;
struct mfi_softc {int mfi_dev; } ;
struct mfi_command {scalar_t__ cm_extra_frames; } ;


 int MFI_REQ_DESCRIPT_FLAGS_TYPE_SHIFT ;
 int MPI2_REQ_DESCRIPT_FLAGS_SCSI_IO ;
 int bzero (union mfi_mpi2_request_descriptor*,int) ;
 int device_printf (int ,char*) ;
 scalar_t__ mfi_build_mpt_pass_thru (struct mfi_softc*,struct mfi_command*) ;
 union mfi_mpi2_request_descriptor* mfi_tbolt_get_request_descriptor (struct mfi_softc*,scalar_t__) ;

union mfi_mpi2_request_descriptor *
mfi_tbolt_build_mpt_cmd(struct mfi_softc *sc, struct mfi_command *cmd)
{
 union mfi_mpi2_request_descriptor *req_desc = ((void*)0);
 uint16_t index;
 if (mfi_build_mpt_pass_thru(sc, cmd)) {
  device_printf(sc->mfi_dev, "Couldn't build MFI pass thru "
      "cmd\n");
  return ((void*)0);
 }

 index = cmd->cm_extra_frames;

 req_desc = mfi_tbolt_get_request_descriptor(sc, index - 1);
 if (req_desc == ((void*)0))
  return ((void*)0);

 bzero(req_desc, sizeof(*req_desc));
 req_desc->header.RequestFlags = (MPI2_REQ_DESCRIPT_FLAGS_SCSI_IO <<
     MFI_REQ_DESCRIPT_FLAGS_TYPE_SHIFT);
 req_desc->header.SMID = index;
 return req_desc;
}
