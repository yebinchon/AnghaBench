
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx_rebuild_request {int rr_status; int rr_target; int rr_channel; } ;


 int MLX_REBUILDASYNC ;
 int cmd_help (int,char**) ;
 int ctrlrpath (int) ;
 int ctrlrunit (char*) ;
 scalar_t__ ioctl (int,int ,struct mlx_rebuild_request*) ;
 int open (int ,int ) ;
 int sscanf (char*,char*,int *,int *) ;
 int warn (char*,...) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
cmd_rebuild(int argc, char *argv[])
{
    struct mlx_rebuild_request rb;
    int unit, fd;

    if (argc != 3)
 return(cmd_help(argc, argv));


    if ((unit = ctrlrunit(argv[1])) == -1) {
 warnx("'%s' is not a valid controller", argv[1]);
 return(1);
    }

    if ((sscanf(argv[2], "disk%2d%2d", &rb.rr_channel, &rb.rr_target) != 2) &&
 (sscanf(argv[2], "unknown%2d%2d", &rb.rr_channel, &rb.rr_target) != 2)) {
 warnx("'%s' is not a valid physical drive", argv[2]);
 return(1);
    }

    if ((fd = open(ctrlrpath(unit), 0)) < 0) {
 warn("can't open %s", ctrlrpath(unit));
 return(1);
    }

    if ((ioctl(fd, MLX_REBUILDASYNC, &rb)) < 0) {
 switch(rb.rr_status) {
 case 0x0002:
     warnx("the drive at %d:%d is already ONLINE", rb.rr_channel, rb.rr_target);
     break;
 case 0x0004:
     warnx("drive failed during rebuild");
     break;
 case 0x0105:
     warnx("there is no drive at channel %d, target %d", rb.rr_channel, rb.rr_target);
     break;
 case 0x0106:
     warnx("drive rebuild or consistency check is already in progress on this controller");
     break;
 default:
     warn("ioctl MLXD_REBUILDASYNC");
 }
    }
    return(0);
}
