
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zoneinfo ;
typedef int vm_guest ;
typedef int title ;
struct stat {int dummy; } ;
typedef int prompt ;
struct TYPE_2__ {int defaultno; } ;
typedef int FILE ;
typedef int DIALOG_VARS ;


 int DITEM_LEAVE_MENU ;
 int MAXPATHLEN ;
 int NCONTINENTS ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int S_IWGRP ;
 int S_IWOTH ;
 int TRUE ;
 char* _PATH_DB ;
 char* _PATH_ISO3166 ;
 char* _PATH_LOCALTIME ;
 char* _PATH_WALL_CMOS_CLOCK ;
 char* _PATH_ZONEINFO ;
 char* _PATH_ZONETAB ;
 char* chrootenv ;
 int close (int) ;
 int continents ;
 TYPE_1__ dialog_vars ;
 int dialog_yesno (char*,char*,int,int) ;
 int dlg_clear () ;
 int dlg_restore_vars (int *) ;
 int dlg_save_vars (int *) ;
 int end_dialog () ;
 int err (int,char*,int ) ;
 int errx (int,char*,int ) ;
 int exit (int) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (int ,char*) ;
 int getopt (int,char**,char*) ;
 int init_dialog (int ,int ) ;
 int install_zoneinfo (char*) ;
 int install_zoneinfo_file (char*) ;
 int make_menus () ;
 int open (int ,int,int) ;
 char* optarg ;
 int optind ;
 int path_db ;
 int path_iso3166 ;
 int path_localtime ;
 int path_wall_cmos_clock ;
 int path_zoneinfo ;
 int path_zonetab ;
 int read_iso3166_table () ;
 int read_zones () ;
 scalar_t__ reallydoit ;
 int reinstall ;
 int snprintf (char*,int,char*,...) ;
 int sort_countries () ;
 int sprintf (int ,char*,char*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 int stdin ;
 int stdout ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (int ,char*) ;
 int strlen (char*) ;
 scalar_t__ sysctlbyname (char*,char*,size_t*,int *,int ) ;
 int umask (int) ;
 int unlink (int ) ;
 int usage () ;
 scalar_t__ usedialog ;
 int xdialog_menu (char*,char*,int,int,int ,int ,int ) ;

int
main(int argc, char **argv)
{




 int c, rv, skiputc;
 char vm_guest[16] = "";
 size_t len = sizeof(vm_guest);

 skiputc = 0;


 if (sysctlbyname("kern.vm_guest", vm_guest, &len, ((void*)0), 0) == 0 &&
     strcmp(vm_guest, "none") != 0)
  skiputc = 1;

 while ((c = getopt(argc, argv, "C:nrs")) != -1) {
  switch(c) {
  case 'C':
   chrootenv = optarg;
   break;
  case 'n':
   reallydoit = 0;
   break;
  case 'r':
   reinstall = 1;



   break;
  case 's':
   skiputc = 1;
   break;
  default:
   usage();
  }
 }

 if (argc - optind > 1)
  usage();

 if (chrootenv == ((void*)0)) {
  strcpy(path_zonetab, _PATH_ZONETAB);
  strcpy(path_iso3166, _PATH_ISO3166);
  strcpy(path_zoneinfo, _PATH_ZONEINFO);
  strcpy(path_localtime, _PATH_LOCALTIME);
  strcpy(path_db, _PATH_DB);
  strcpy(path_wall_cmos_clock, _PATH_WALL_CMOS_CLOCK);
 } else {
  sprintf(path_zonetab, "%s/%s", chrootenv, _PATH_ZONETAB);
  sprintf(path_iso3166, "%s/%s", chrootenv, _PATH_ISO3166);
  sprintf(path_zoneinfo, "%s/%s", chrootenv, _PATH_ZONEINFO);
  sprintf(path_localtime, "%s/%s", chrootenv, _PATH_LOCALTIME);
  sprintf(path_db, "%s/%s", chrootenv, _PATH_DB);
  sprintf(path_wall_cmos_clock, "%s/%s", chrootenv,
      _PATH_WALL_CMOS_CLOCK);
 }


 (void)umask(S_IWGRP | S_IWOTH);

 if (reinstall == 1) {
  FILE *f;
  char zoneinfo[MAXPATHLEN];

  if ((f = fopen(path_db, "r")) != ((void*)0)) {
   if (fgets(zoneinfo, sizeof(zoneinfo), f) != ((void*)0)) {
    zoneinfo[sizeof(zoneinfo) - 1] = 0;
    if (strlen(zoneinfo) > 0) {
     zoneinfo[strlen(zoneinfo) - 1] = 0;
     rv = install_zoneinfo(zoneinfo);
     exit(rv & ~DITEM_LEAVE_MENU);
    }
    errx(1, "Error reading %s.\n", path_db);
   }
   fclose(f);
   errx(1,
       "Unable to determine earlier installed zoneinfo "
       "name. Check %s", path_db);
  }
  errx(1, "Cannot open %s for reading. Does it exist?", path_db);
 }





 if (optind == argc - 1) {
  struct stat sb;

  if (stat(argv[optind], &sb) != 0) {



   rv = install_zoneinfo(argv[optind]);
   exit(rv & ~DITEM_LEAVE_MENU);
  }

 }
 usage();

 return (0);
}
