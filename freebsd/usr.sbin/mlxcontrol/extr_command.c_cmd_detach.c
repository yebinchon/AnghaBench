
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxd_foreach_action {int* arg; int func; } ;


 int cmd_help (int,char**) ;
 int ctrlrunit (char*) ;
 int detach_drive ;
 int driveunit (char*) ;
 int getopt (int,char**,char*) ;
 int mlx_foreach (int ,int*) ;
 int mlxd_foreach_ctrlr (int,struct mlxd_foreach_action*) ;
 int optind ;
 int optreset ;
 int warnx (char*,char*) ;

__attribute__((used)) static int
cmd_detach(int argc, char *argv[])
{
    struct mlxd_foreach_action ma;
    int all = 0, i, ch, unit;

    optreset = 1;
    optind = 1;
    while ((ch = getopt(argc, argv, "a")) != -1)
 switch(ch) {
 case 'a':
     all = 1;
     break;
 default:
     return(cmd_help(argc, argv));
 }
    argc -= optind;
    argv += optind;

    if (all) {
 ma.func = detach_drive;
 ma.arg = &unit;
 for (i = 0; i < argc; i++) {
     if ((unit = ctrlrunit(argv[i])) == -1) {
  warnx("'%s' is not a valid controller", argv[i]);
     } else {
  mlxd_foreach_ctrlr(unit, &ma);
     }
 }
    } else {
 for (i = 0; i < argc; i++) {
     if ((unit = driveunit(argv[i])) == -1) {
  warnx("'%s' is not a valid drive", argv[i]);
     } else {

  mlx_foreach(detach_drive, &unit);
     }
 }
    }
    return(0);
}
