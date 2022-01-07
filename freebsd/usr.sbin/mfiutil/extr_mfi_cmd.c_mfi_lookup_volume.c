
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef long uint8_t ;
typedef size_t u_int ;
struct mfi_query_disk {int devname; } ;
struct mfi_ld_list {size_t ld_count; TYPE_3__* ld_list; } ;
typedef int list ;
struct TYPE_4__ {long target_id; } ;
struct TYPE_5__ {TYPE_1__ v; } ;
struct TYPE_6__ {TYPE_2__ ld; } ;


 int EINVAL ;
 int MFI_DCMD_LD_GET_LIST ;
 int errno ;
 scalar_t__ mfi_dcmd_command (int,int ,struct mfi_ld_list*,int,int *,int ,int *) ;
 scalar_t__ mfi_query_disk (int,long,struct mfi_query_disk*) ;
 scalar_t__ strcmp (char const*,int ) ;
 long strtol (char const*,char**,int ) ;

int
mfi_lookup_volume(int fd, const char *name, uint8_t *target_id)
{
 struct mfi_query_disk info;
 struct mfi_ld_list list;
 char *cp;
 long val;
 u_int i;


 val = strtol(name, &cp, 0);
 if (*cp == '\0') {
  *target_id = val;
  return (0);
 }

 if (mfi_dcmd_command(fd, MFI_DCMD_LD_GET_LIST, &list, sizeof(list),
     ((void*)0), 0, ((void*)0)) < 0)
  return (-1);

 for (i = 0; i < list.ld_count; i++) {
  if (mfi_query_disk(fd, list.ld_list[i].ld.v.target_id,
      &info) < 0)
   continue;
  if (strcmp(name, info.devname) == 0) {
   *target_id = list.ld_list[i].ld.v.target_id;
   return (0);
  }
 }
 errno = EINVAL;
 return (-1);
}
