
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* PageNumber; void* PageType; } ;
struct mpt_cfg_page_req {TYPE_1__ header; int ioc_status; int page_address; } ;
typedef int req ;
typedef void* U8 ;
typedef int U32 ;
typedef int U16 ;
typedef TYPE_1__ CONFIG_PAGE_HEADER ;


 int EIO ;
 int IOC_STATUS_SUCCESS (int ) ;
 int MPI_IOCSTATUS_SUCCESS ;
 int MPTIO_READ_CFG_HEADER ;
 int bzero (struct mpt_cfg_page_req*,int) ;
 int errno ;
 scalar_t__ ioctl (int,int ,struct mpt_cfg_page_req*) ;
 int mpt_ioc_status (int ) ;
 int warnx (char*,int ) ;

int
mpt_read_config_page_header(int fd, U8 PageType, U8 PageNumber, U32 PageAddress,
    CONFIG_PAGE_HEADER *header, U16 *IOCStatus)
{
 struct mpt_cfg_page_req req;

 if (IOCStatus != ((void*)0))
  *IOCStatus = MPI_IOCSTATUS_SUCCESS;
 bzero(&req, sizeof(req));
 req.header.PageType = PageType;
 req.header.PageNumber = PageNumber;
 req.page_address = PageAddress;
 if (ioctl(fd, MPTIO_READ_CFG_HEADER, &req) < 0)
  return (errno);
 if (!IOC_STATUS_SUCCESS(req.ioc_status)) {
  if (IOCStatus != ((void*)0))
   *IOCStatus = req.ioc_status;
  else
   warnx("Reading config page header failed: %s",
       mpt_ioc_status(req.ioc_status));
  return (EIO);
 }
 *header = req.header;
 return (0);
}
