
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ExtPageLength; void* ExtPageType; void* PageNumber; void* PageVersion; } ;
struct mpt_ext_cfg_page_req {int len; int ioc_status; TYPE_1__ header; void* buf; int page_address; } ;
typedef int req ;
typedef void* U8 ;
typedef int U32 ;
typedef int U16 ;


 int EIO ;
 int IOC_STATUS_SUCCESS (int ) ;
 int MPI_IOCSTATUS_SUCCESS ;
 int MPTIO_READ_EXT_CFG_HEADER ;
 int MPTIO_READ_EXT_CFG_PAGE ;
 int bcopy (TYPE_1__*,void*,int) ;
 int bzero (struct mpt_ext_cfg_page_req*,int) ;
 int errno ;
 int free (void*) ;
 scalar_t__ ioctl (int,int ,struct mpt_ext_cfg_page_req*) ;
 void* malloc (int) ;
 int mpt_ioc_status (int ) ;
 int warnx (char*,int ) ;

void *
mpt_read_extended_config_page(int fd, U8 ExtPageType, U8 PageVersion,
    U8 PageNumber, U32 PageAddress, U16 *IOCStatus)
{
 struct mpt_ext_cfg_page_req req;
 void *buf;
 int error;

 if (IOCStatus != ((void*)0))
  *IOCStatus = MPI_IOCSTATUS_SUCCESS;
 bzero(&req, sizeof(req));
 req.header.PageVersion = PageVersion;
 req.header.PageNumber = PageNumber;
 req.header.ExtPageType = ExtPageType;
 req.page_address = PageAddress;
 if (ioctl(fd, MPTIO_READ_EXT_CFG_HEADER, &req) < 0)
  return (((void*)0));
 if (!IOC_STATUS_SUCCESS(req.ioc_status)) {
  if (IOCStatus != ((void*)0))
   *IOCStatus = req.ioc_status;
  else
   warnx("Reading extended config page header failed: %s",
       mpt_ioc_status(req.ioc_status));
  errno = EIO;
  return (((void*)0));
 }
 req.len = req.header.ExtPageLength * 4;
 buf = malloc(req.len);
 req.buf = buf;
 bcopy(&req.header, buf, sizeof(req.header));
 if (ioctl(fd, MPTIO_READ_EXT_CFG_PAGE, &req) < 0) {
  error = errno;
  free(buf);
  errno = error;
  return (((void*)0));
 }
 if (!IOC_STATUS_SUCCESS(req.ioc_status)) {
  if (IOCStatus != ((void*)0))
   *IOCStatus = req.ioc_status;
  else
   warnx("Reading extended config page failed: %s",
       mpt_ioc_status(req.ioc_status));
  free(buf);
  errno = EIO;
  return (((void*)0));
 }
 return (buf);
}
