
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int MFI_PD_STATE_REBUILD ;
 int drive_set_state (char*,int ) ;
 int warnx (char*,char*) ;

__attribute__((used)) static int
rebuild_drive(int ac, char **av)
{

 if (ac != 2) {
  warnx("rebuild: %s", ac > 2 ? "extra arguments" :
      "drive required");
  return (EINVAL);
 }

 return (drive_set_state(av[1], MFI_PD_STATE_REBUILD));
}
