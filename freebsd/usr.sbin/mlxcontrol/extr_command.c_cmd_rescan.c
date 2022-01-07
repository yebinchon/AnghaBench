
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmd_help (int,char**) ;
 int ctrlrunit (char*) ;
 int getopt (int,char**,char*) ;
 int mlx_foreach (int (*) (int,int *),int *) ;
 int optind ;
 int optreset ;
 int rescan_ctrlr (int,int *) ;
 int warnx (char*,char*) ;

__attribute__((used)) static int
cmd_rescan(int argc, char *argv[])
{
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
 mlx_foreach(rescan_ctrlr, ((void*)0));
    } else {
 for (i = 0; i < argc; i++) {
     if ((unit = ctrlrunit(argv[i])) == -1) {
  warnx("'%s' is not a valid controller", argv[i]);
     } else {
  rescan_ctrlr(unit, ((void*)0));
     }
 }
    }
    return(0);
}
