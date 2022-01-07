
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mfi_query_disk {char const* devname; } ;
typedef int buf ;


 scalar_t__ mfi_query_disk (int,int,struct mfi_query_disk*) ;
 int snprintf (char*,int,char*,int) ;

const char *
mfi_volume_name(int fd, uint8_t target_id)
{
 static struct mfi_query_disk info;
 static char buf[4];

 if (mfi_query_disk(fd, target_id, &info) < 0) {
  snprintf(buf, sizeof(buf), "%d", target_id);
  return (buf);
 }
 return (info.devname);
}
