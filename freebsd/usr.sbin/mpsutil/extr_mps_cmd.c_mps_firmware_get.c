
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int req ;
typedef int reply ;
struct TYPE_6__ {int ActualImageSize; int ImageType; int Function; } ;
typedef TYPE_1__ MPI2_FW_UPLOAD_REQUEST ;
typedef TYPE_1__ MPI2_FW_UPLOAD_REPLY ;


 int MPI2_FUNCTION_FW_UPLOAD ;
 int MPI2_FW_DOWNLOAD_ITYPE_BIOS ;
 int MPI2_FW_DOWNLOAD_ITYPE_FW ;
 int bzero (TYPE_1__*,int) ;
 unsigned char* calloc (int,int) ;
 int free (unsigned char*) ;
 scalar_t__ mps_user_command (int,TYPE_1__*,int,TYPE_1__*,int,unsigned char*,int,int ) ;
 int warn (char*) ;

int
mps_firmware_get(int fd, unsigned char **firmware, bool bios)
{
 MPI2_FW_UPLOAD_REQUEST req;
 MPI2_FW_UPLOAD_REPLY reply;
 int size;

 *firmware = ((void*)0);
 bzero(&req, sizeof(req));
 bzero(&reply, sizeof(reply));
 req.Function = MPI2_FUNCTION_FW_UPLOAD;
 req.ImageType = bios ? MPI2_FW_DOWNLOAD_ITYPE_BIOS : MPI2_FW_DOWNLOAD_ITYPE_FW;

 if (mps_user_command(fd, &req, sizeof(req), &reply, sizeof(reply),
     ((void*)0), 0, 0)) {
  return (-1);
 }
 if (reply.ActualImageSize == 0) {
  return (-1);
 }

 size = reply.ActualImageSize;
 *firmware = calloc(size, sizeof(unsigned char));
 if (*firmware == ((void*)0)) {
  warn("calloc");
  return (-1);
 }
 if (mps_user_command(fd, &req, sizeof(req), &reply, sizeof(reply),
     *firmware, size, 0)) {
  free(*firmware);
  return (-1);
 }

 return (size);
}
