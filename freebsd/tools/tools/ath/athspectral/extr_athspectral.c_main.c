
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spectralhandler {int dummy; } ;
typedef int spectral ;


 char* ATH_DEFAULT ;
 int atoi (char*) ;
 int exit (int) ;
 int memset (struct spectralhandler*,int ,int) ;
 int spectral_closedev (struct spectralhandler*) ;
 int spectral_enable_at_reset (struct spectralhandler*,int ) ;
 int spectral_get (struct spectralhandler*) ;
 scalar_t__ spectral_opendev (struct spectralhandler*,char const*) ;
 scalar_t__ spectral_set_param (struct spectralhandler*,char*,char*) ;
 int spectral_start (struct spectralhandler*) ;
 int spectral_stop (struct spectralhandler*) ;
 scalar_t__ strcasecmp (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int usage (char const*) ;

int
main(int argc, char *argv[])
{
 struct spectralhandler spectral;
 const char *devname = ATH_DEFAULT;
 const char *progname = argv[0];

 memset(&spectral, 0, sizeof(spectral));


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

 if (spectral_opendev(&spectral, devname) == 0)
  exit(127);

 if (strcasecmp(argv[1], "get") == 0) {
  spectral_get(&spectral);
 } else if (strcasecmp(argv[1], "set") == 0) {
  if (argc < 4) {
   usage(progname);
   exit(127);
  }
  if (spectral_set_param(&spectral, argv[2], argv[3]) == 0) {
   usage(progname);
   exit(127);
  }
 } else if (strcasecmp(argv[1], "start") == 0) {
  spectral_start(&spectral);
 } else if (strcasecmp(argv[1], "stop") == 0) {
  spectral_stop(&spectral);
 } else if (strcasecmp(argv[1], "enable_at_reset") == 0) {
  if (argc < 3) {
   usage(progname);
   exit(127);
  }
  spectral_enable_at_reset(&spectral, atoi(argv[2]));
 } else {
  usage(progname);
  exit(127);
 }


 spectral_closedev(&spectral);
 exit(0);
}
