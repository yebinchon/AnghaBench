
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int MPI_PHYSDISK0_STATUS_OFFLINE_REQUESTED ;
 int MPI_RAID_ACTION_PHYSDISK_OFFLINE ;
 int drive_set_state (char*,int ,int ,char*) ;
 int warnx (char*,char*) ;

__attribute__((used)) static int
offline_drive(int ac, char **av)
{

 if (ac != 2) {
  warnx("offline: %s", ac > 2 ? "extra arguments" :
      "drive required");
  return (EINVAL);
 }

 return (drive_set_state(av[1], MPI_RAID_ACTION_PHYSDISK_OFFLINE,
     MPI_PHYSDISK0_STATUS_OFFLINE_REQUESTED, "OFFLINE"));
}
