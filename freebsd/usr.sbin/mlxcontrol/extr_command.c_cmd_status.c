
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmd_help (int,char**) ;
 int controller_print ;
 int driveunit (char*) ;
 int getopt (int,char**,char*) ;
 int mlx_foreach (int ,int*) ;
 int mlxd_foreach (int (*) (int,int*),int*) ;
 int optind ;
 int optreset ;
 int status_print (int,int*) ;
 int status_result ;
 int warnx (char*,char*) ;

__attribute__((used)) static int
cmd_status(int argc, char *argv[])
{
    int ch, verbosity = 1, i, unit;

    optreset = 1;
    optind = 1;
    while ((ch = getopt(argc, argv, "qv")) != -1)
 switch(ch) {
 case 'q':
     verbosity = 0;
     break;
 case 'v':
     verbosity = 2;
     break;
 default:
     return(cmd_help(argc, argv));
 }
    argc -= optind;
    argv += optind;

    if (argc < 1) {
 mlx_foreach(controller_print, &verbosity);
 mlxd_foreach(status_print, &verbosity);
    } else {
 for (i = 0; i < argc; i++) {
     if ((unit = driveunit(argv[i])) == -1) {
  warnx("'%s' is not a valid drive", argv[i]);
     } else {
  status_print(unit, &verbosity);
     }
 }
    }
    return(status_result);
}
