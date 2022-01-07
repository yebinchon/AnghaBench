
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MLXD_CHECKASYNC ;
 int cmd_help (int,char**) ;
 int drivepath (int) ;
 int driveunit (char*) ;
 scalar_t__ ioctl (int,int ,int*) ;
 int open (int ,int ) ;
 int warn (char*,...) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
cmd_check(int argc, char *argv[])
{
    int unit, fd, result;

    if (argc != 2)
 return(cmd_help(argc, argv));

    if ((unit = driveunit(argv[1])) == -1) {
 warnx("'%s' is not a valid drive", argv[1]);
    } else {


 if ((fd = open(drivepath(unit), 0)) < 0) {
     warn("can't open %s", drivepath(unit));
 } else {

     if ((ioctl(fd, MLXD_CHECKASYNC, &result)) < 0) {
  switch(result) {
  case 0x0002:
      warnx("one or more of the SCSI disks on which the drive '%s' depends is DEAD", argv[1]);
      break;
  case 0x0105:
      warnx("drive %s is invalid, or not a drive which can be checked", argv[1]);
      break;
  case 0x0106:
      warnx("drive rebuild or consistency check is already in progress on this controller");
      break;
  default:
      warn("ioctl MLXD_CHECKASYNC");
  }
     }
 }
    }
    return(0);
}
