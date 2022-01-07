
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radarhandler {int dummy; } ;
typedef int radar ;


 char* ATH_DEFAULT ;
 int exit (int) ;
 int memset (struct radarhandler*,int ,int) ;
 int radar_closedev (struct radarhandler*) ;
 int radar_get (struct radarhandler*) ;
 scalar_t__ radar_opendev (struct radarhandler*,char const*) ;
 scalar_t__ radar_set_param (struct radarhandler*,char*,char*) ;
 scalar_t__ strcasecmp (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int usage (char const*) ;

int
main(int argc, char *argv[])
{
 struct radarhandler radar;
 const char *devname = ATH_DEFAULT;
 const char *progname = argv[0];

 memset(&radar, 0, sizeof(radar));


 if (argc >= 2 && strcmp(argv[1], "-h") == 0) {
  usage(progname);
  exit(0);
 }
 if (argc >= 2 && strcmp(argv[1], "-?") == 0) {
  usage(progname);
  exit(0);
 }

 if (argc >= 2 && strcmp(argv[1], "-i") == 0) {
  if (argc == 2) {
   usage(progname);
   exit(127);
  }
  devname = argv[2];
  argc -= 2; argv += 2;
 }


 if (argc == 1) {
  usage(progname);
  exit(127);
 }

 if (radar_opendev(&radar, devname) == 0)
  exit(127);

 if (strcasecmp(argv[1], "get") == 0) {
  radar_get(&radar);
 } else if (strcasecmp(argv[1], "set") == 0) {
  if (argc < 4) {
   usage(progname);
   exit(127);
  }
  if (radar_set_param(&radar, argv[2], argv[3]) == 0) {
   usage(progname);
   exit(127);
  }
 } else {
  usage(progname);
  exit(127);
 }


 radar_closedev(&radar);
 exit(0);
}
