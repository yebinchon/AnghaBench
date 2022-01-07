
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct volume_info {int drive_count; struct drive_info* drives; } ;
struct drive_info {int * sdisk; int * info; } ;
struct config_id_state {int * sdisks; int nsdisks; int list; } ;
typedef int U8 ;


 int EINVAL ;



 struct drive_info* calloc (int,int) ;
 int errno ;
 scalar_t__ mpt_lock_physdisk (int *) ;
 int mpt_lookup_drive (int ,char*,int *) ;
 scalar_t__ mpt_lookup_standalone_disk (char*,int *,int ,int*) ;
 int * mpt_pd_info (int,int ,int *) ;
 char* strchr (char*,char) ;
 char* strsep (char**,char*) ;
 int warn (char*,char*) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
parse_volume(int fd, int raid_type, struct config_id_state *state,
    char *volume_str, struct volume_info *info)
{
 struct drive_info *dinfo;
 U8 PhysDiskNum;
 char *cp;
 int count, error, i;

 cp = volume_str;
 for (count = 0; cp != ((void*)0); count++) {
  cp = strchr(cp, ',');
  if (cp != ((void*)0)) {
   cp++;
   if (*cp == ',') {
    warnx("Invalid drive list '%s'", volume_str);
    return (EINVAL);
   }
  }
 }


 switch (raid_type) {
 case 130:
  if (count < 2) {
   warnx("RAID0 requires at least 2 drives in each "
       "array");
   return (EINVAL);
  }
  break;
 case 129:
  if (count != 2) {
   warnx("RAID1 requires exactly 2 drives in each "
       "array");
   return (EINVAL);
  }
  break;
 case 128:
  if (count < 3) {
   warnx("RAID1E requires at least 3 drives in each "
       "array");
   return (EINVAL);
  }
  break;
 }


 info->drives = calloc(count, sizeof(struct drive_info));
 info->drive_count = count;
 for (dinfo = info->drives; (cp = strsep(&volume_str, ",")) != ((void*)0);
      dinfo++) {

  error = mpt_lookup_drive(state->list, cp, &PhysDiskNum);
  if (error == 0) {
   dinfo->info = mpt_pd_info(fd, PhysDiskNum, ((void*)0));
   if (dinfo->info == ((void*)0))
    return (errno);
   continue;
  }


  if (mpt_lookup_standalone_disk(cp, state->sdisks,
      state->nsdisks, &i) < 0) {
   error = errno;
   warn("Unable to lookup drive %s", cp);
   return (error);
  }
  dinfo->sdisk = &state->sdisks[i];


  if (mpt_lock_physdisk(dinfo->sdisk) < 0)
   return (errno);
 }

 return (0);
}
