
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int req ;
typedef int reply ;
typedef void* U8 ;
typedef int U32 ;
typedef int U16 ;
struct TYPE_9__ {int Header; int IOCStatus; } ;
struct TYPE_7__ {void* PageNumber; void* PageType; } ;
struct TYPE_8__ {int PageAddress; TYPE_1__ Header; int Action; int Function; } ;
typedef TYPE_2__ MPI2_CONFIG_REQUEST ;
typedef TYPE_3__ MPI2_CONFIG_REPLY ;
typedef int MPI2_CONFIG_PAGE_HEADER ;


 int EINVAL ;
 int EIO ;
 int IOC_STATUS_SUCCESS (int ) ;
 int MPI2_CONFIG_ACTION_PAGE_HEADER ;
 int MPI2_FUNCTION_CONFIG ;
 int bzero (TYPE_2__*,int) ;
 int errno ;
 scalar_t__ mps_pass_command (int,TYPE_2__*,int,TYPE_3__*,int,int *,int ,int *,int ,int) ;

int
mps_read_config_page_header(int fd, U8 PageType, U8 PageNumber, U32 PageAddress,
    MPI2_CONFIG_PAGE_HEADER *header, U16 *IOCStatus)
{
 MPI2_CONFIG_REQUEST req;
 MPI2_CONFIG_REPLY reply;

 bzero(&req, sizeof(req));
 req.Function = MPI2_FUNCTION_CONFIG;
 req.Action = MPI2_CONFIG_ACTION_PAGE_HEADER;
 req.Header.PageType = PageType;
 req.Header.PageNumber = PageNumber;
 req.PageAddress = PageAddress;

 if (mps_pass_command(fd, &req, sizeof(req), &reply, sizeof(reply),
     ((void*)0), 0, ((void*)0), 0, 30))
  return (errno);

 if (!IOC_STATUS_SUCCESS(reply.IOCStatus)) {
  if (IOCStatus != ((void*)0))
   *IOCStatus = reply.IOCStatus;
  return (EIO);
 }
 if (header == ((void*)0))
  return (EINVAL);
 *header = reply.Header;
 return (0);
}
