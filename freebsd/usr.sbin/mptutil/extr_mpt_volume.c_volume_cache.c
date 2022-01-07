
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int U8 ;
typedef int U32 ;
struct TYPE_5__ {int Settings; } ;
struct TYPE_6__ {TYPE_1__ VolumeSettings; } ;
typedef TYPE_2__ CONFIG_PAGE_RAID_VOL_0 ;


 int EINVAL ;
 int MPI_RAID_ACTION_CHANGE_VOLUME_SETTINGS ;
 int close (int) ;
 int errno ;
 int free (TYPE_2__*) ;
 int mpt_lookup_volume (int,char*,int *,int *) ;
 int mpt_open (int ) ;
 int mpt_raid_action (int,int ,int ,int ,int ,int,int *,int ,int *,int *,int ,int *,int *,int ) ;
 int mpt_unit ;
 TYPE_2__* mpt_vol_info (int,int ,int ,int *) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 char tolower (char) ;
 int warn (char*) ;
 int warnc (int,char*,...) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
volume_cache(int ac, char **av)
{
 CONFIG_PAGE_RAID_VOL_0 *volume;
 U32 Settings, NewSettings;
 U8 VolumeBus, VolumeID;
 char *s1;
 int error, fd;

 if (ac != 3) {
  warnx("volume cache: %s", ac > 3 ? "extra arguments" :
      "missing arguments");
  return (EINVAL);
 }

        for (s1 = av[2]; *s1 != '\0'; s1++)
                *s1 = tolower(*s1);
 if ((strcmp(av[2], "enable")) && (strcmp(av[2], "enabled")) &&
     (strcmp(av[2], "disable")) && (strcmp(av[2], "disabled"))) {
  warnx("volume cache: invalid flag, must be 'enable' or 'disable'\n");
  return (EINVAL);
 }

 fd = mpt_open(mpt_unit);
 if (fd < 0) {
  error = errno;
  warn("mpt_open");
  return (error);
 }

 error = mpt_lookup_volume(fd, av[1], &VolumeBus, &VolumeID);
 if (error) {
  warnc(error, "Invalid volume: %s", av[1]);
  close(fd);
  return (error);
 }

 volume = mpt_vol_info(fd, VolumeBus, VolumeID, ((void*)0));
 if (volume == ((void*)0)) {
  close(fd);
  return (errno);
 }

 Settings = volume->VolumeSettings.Settings;

 NewSettings = Settings;
 if (strncmp(av[2], "enable", sizeof("enable")) == 0)
  NewSettings |= 0x01;
 if (strncmp(av[2], "disable", sizeof("disable")) == 0)
  NewSettings &= ~0x01;

 if (NewSettings == Settings) {
  warnx("volume cache unchanged");
  free(volume);
  close(fd);
  return (0);
 }

 volume->VolumeSettings.Settings = NewSettings;
 error = mpt_raid_action(fd, MPI_RAID_ACTION_CHANGE_VOLUME_SETTINGS,
     VolumeBus, VolumeID, 0, *(U32 *)&volume->VolumeSettings, ((void*)0), 0,
     ((void*)0), ((void*)0), 0, ((void*)0), ((void*)0), 0);
 if (error)
  warnc(error, "volume cache change failed");

 close(fd);
 return (error);
}
