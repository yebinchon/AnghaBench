
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpt_cfg_page_req {int len; int ioc_status; void* buf; } ;
typedef int req ;
typedef int U16 ;
struct TYPE_2__ {int PageLength; } ;
typedef TYPE_1__ CONFIG_PAGE_HEADER ;


 int EIO ;
 int IOC_STATUS_SUCCESS (int ) ;
 int MPI_IOCSTATUS_SUCCESS ;
 int MPTIO_WRITE_CFG_PAGE ;
 int bzero (struct mpt_cfg_page_req*,int) ;
 int errno ;
 scalar_t__ ioctl (int,int ,struct mpt_cfg_page_req*) ;
 int mpt_ioc_status (int ) ;
 int warnx (char*,int ) ;

int
mpt_write_config_page(int fd, void *buf, U16 *IOCStatus)
{
 CONFIG_PAGE_HEADER *hdr;
 struct mpt_cfg_page_req req;

 if (IOCStatus != ((void*)0))
  *IOCStatus = MPI_IOCSTATUS_SUCCESS;
 bzero(&req, sizeof(req));
 req.buf = buf;
 hdr = buf;
 req.len = hdr->PageLength * 4;
 if (ioctl(fd, MPTIO_WRITE_CFG_PAGE, &req) < 0)
  return (errno);
 if (!IOC_STATUS_SUCCESS(req.ioc_status)) {
  if (IOCStatus != ((void*)0)) {
   *IOCStatus = req.ioc_status;
   return (0);
  }
  warnx("Writing config page failed: %s",
      mpt_ioc_status(req.ioc_status));
  return (EIO);
 }
 return (0);
}
