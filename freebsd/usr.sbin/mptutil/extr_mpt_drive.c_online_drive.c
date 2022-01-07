
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int MPI_PHYSDISK0_STATUS_ONLINE ;
 int MPI_RAID_ACTION_PHYSDISK_ONLINE ;
 int drive_set_state (char*,int ,int ,char*) ;
 int warnx (char*,char*) ;

__attribute__((used)) static int
online_drive(int ac, char **av)
{

 if (ac != 2) {
  warnx("online: %s", ac > 2 ? "extra arguments" :
      "drive required");
  return (EINVAL);
 }

 return (drive_set_state(av[1], MPI_RAID_ACTION_PHYSDISK_ONLINE,
     MPI_PHYSDISK0_STATUS_ONLINE, "ONLINE"));
}
