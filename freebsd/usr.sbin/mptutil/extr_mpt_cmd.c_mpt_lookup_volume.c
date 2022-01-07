
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mpt_query_disk {int devname; } ;
typedef long U8 ;
struct TYPE_6__ {int NumActiveVolumes; TYPE_1__* RaidVolume; } ;
struct TYPE_5__ {long VolumeBus; long VolumeID; } ;
typedef TYPE_1__ CONFIG_PAGE_IOC_2_RAID_VOL ;
typedef TYPE_2__ CONFIG_PAGE_IOC_2 ;


 int EINVAL ;
 int errno ;
 int free (TYPE_2__*) ;
 scalar_t__ mpt_query_disk (long,long,struct mpt_query_disk*) ;
 TYPE_2__* mpt_read_ioc_page (int,int,int *) ;
 scalar_t__ strcmp (char const*,int ) ;
 long strtol (char const*,char**,int ) ;

int
mpt_lookup_volume(int fd, const char *name, U8 *VolumeBus, U8 *VolumeID)
{
 CONFIG_PAGE_IOC_2 *ioc2;
 CONFIG_PAGE_IOC_2_RAID_VOL *vol;
 struct mpt_query_disk info;
 char *cp;
 long bus, id;
 int i;





 bus = strtol(name, &cp, 0);
 if (*cp == ':') {
  id = strtol(cp + 1, &cp, 0);
  if (*cp == '\0') {
   if (bus < 0 || bus > 0xff || id < 0 || id > 0xff) {
    return (EINVAL);
   }
   *VolumeBus = bus;
   *VolumeID = id;
   return (0);
  }
 } else if (*cp == '\0') {
  if (bus < 0 || bus > 0xff)
   return (EINVAL);
  *VolumeBus = 0;
  *VolumeID = bus;
  return (0);
 }

 ioc2 = mpt_read_ioc_page(fd, 2, ((void*)0));
 if (ioc2 == ((void*)0))
  return (errno);

 vol = ioc2->RaidVolume;
 for (i = 0; i < ioc2->NumActiveVolumes; vol++, i++) {
  if (mpt_query_disk(vol->VolumeBus, vol->VolumeID, &info) != 0)
   continue;
  if (strcmp(name, info.devname) == 0) {
   *VolumeBus = vol->VolumeBus;
   *VolumeID = vol->VolumeID;
   free(ioc2);
   return (0);
  }
 }
 free(ioc2);
 return (EINVAL);
}
