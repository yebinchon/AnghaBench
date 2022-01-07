
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct volume_info {int drive_count; struct drive_info* drives; } ;
struct drive_info {int * info; TYPE_1__* sdisk; } ;
typedef int U8 ;
struct TYPE_2__ {char* devname; } ;


 int errno ;
 scalar_t__ mpt_create_physdisk (int,TYPE_1__*,int*) ;
 int * mpt_pd_info (int,int,int *) ;
 int printf (char*,char*,int) ;
 int warn (char*,char*) ;

__attribute__((used)) static int
add_drives(int fd, struct volume_info *info, int verbose)
{
 struct drive_info *dinfo;
 U8 PhysDiskNum;
 int error, i;

 for (i = 0, dinfo = info->drives; i < info->drive_count;
      i++, dinfo++) {
  if (dinfo->info == ((void*)0)) {
   if (mpt_create_physdisk(fd, dinfo->sdisk,
       &PhysDiskNum) < 0) {
    error = errno;
    warn(
       "Failed to create physical disk page for %s",
        dinfo->sdisk->devname);
    return (error);
   }
   if (verbose)
    printf("Added drive %s with PhysDiskNum %u\n",
        dinfo->sdisk->devname, PhysDiskNum);

   dinfo->info = mpt_pd_info(fd, PhysDiskNum, ((void*)0));
   if (dinfo->info == ((void*)0))
    return (errno);
  }
 }
 return (0);
}
