
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int req ;
typedef int reply ;
typedef int U32 ;
typedef void* U16 ;
struct TYPE_7__ {int IOCStatus; } ;
struct TYPE_6__ {int SlotStatus; void* Slot; void* EnclosureHandle; int Flags; int Action; int Function; } ;
typedef TYPE_1__ MPI2_SEP_REQUEST ;
typedef TYPE_2__ MPI2_SEP_REPLY ;


 int EIO ;
 int IOC_STATUS_SUCCESS (int ) ;
 int MPI2_FUNCTION_SCSI_ENCLOSURE_PROCESSOR ;
 int MPI2_SEP_REQ_ACTION_WRITE_STATUS ;
 int MPI2_SEP_REQ_FLAGS_ENCLOSURE_SLOT_ADDRESS ;
 int bzero (TYPE_1__*,int) ;
 int errno ;
 scalar_t__ mps_pass_command (int,TYPE_1__*,int,TYPE_2__*,int,int *,int ,int *,int ,int) ;

int
mps_set_slot_status(int fd, U16 handle, U16 slot, U32 status)
{
 MPI2_SEP_REQUEST req;
 MPI2_SEP_REPLY reply;

 bzero(&req, sizeof(req));
 req.Function = MPI2_FUNCTION_SCSI_ENCLOSURE_PROCESSOR;
 req.Action = MPI2_SEP_REQ_ACTION_WRITE_STATUS;
 req.Flags = MPI2_SEP_REQ_FLAGS_ENCLOSURE_SLOT_ADDRESS;
 req.EnclosureHandle = handle;
 req.Slot = slot;
 req.SlotStatus = status;

 if (mps_pass_command(fd, &req, sizeof(req), &reply, sizeof(reply),
     ((void*)0), 0, ((void*)0), 0, 30) != 0)
  return (errno);

 if (!IOC_STATUS_SUCCESS(reply.IOCStatus))
  return (EIO);
 return (0);
}
