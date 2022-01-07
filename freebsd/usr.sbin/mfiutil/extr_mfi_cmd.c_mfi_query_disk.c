
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mfi_query_disk {int present; int array_id; } ;


 int ENXIO ;
 int MFIIO_QUERY_DISK ;
 int bzero (struct mfi_query_disk*,int) ;
 int errno ;
 scalar_t__ ioctl (int,int ,struct mfi_query_disk*) ;

__attribute__((used)) static int
mfi_query_disk(int fd, uint8_t target_id, struct mfi_query_disk *info)
{

 bzero(info, sizeof(*info));
 info->array_id = target_id;
 if (ioctl(fd, MFIIO_QUERY_DISK, info) < 0)
  return (-1);
 if (!info->present) {
  errno = ENXIO;
  return (-1);
 }
 return (0);
}
