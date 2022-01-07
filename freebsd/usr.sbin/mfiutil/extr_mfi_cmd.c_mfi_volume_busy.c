
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mfi_query_disk {scalar_t__ open; } ;


 scalar_t__ mfi_query_disk (int,int ,struct mfi_query_disk*) ;

int
mfi_volume_busy(int fd, uint8_t target_id)
{
 struct mfi_query_disk info;


 if (mfi_query_disk(fd, target_id, &info) < 0)
  return (0);
 return (info.open != 0);
}
