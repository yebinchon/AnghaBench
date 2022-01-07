
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 char* VERSION ;
 scalar_t__ cdname ;
 int close (int) ;
 int fd ;
 int fflush (int ) ;
 scalar_t__ getenv (char*) ;
 int getopt (int,char**,char*) ;
 char* input (int*) ;
 int isatty (int ) ;
 scalar_t__ optarg ;
 scalar_t__ optind ;
 char* parse (char*,int*) ;
 int printf (char*,...) ;
 int run (int,char*) ;
 int stdout ;
 int strcasecmp (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int usage () ;
 scalar_t__ use_cdrom_instead (char*) ;
 int verbose ;
 int warn (int *) ;

int
main(int argc, char **argv)
{
 int cmd;
 char *arg;

 for (;;) {
  switch (getopt (argc, argv, "svhf:")) {
  case -1:
   break;
  case 's':
   verbose = 0;
   continue;
  case 'v':
   verbose = 2;
   continue;
  case 'f':
   cdname = optarg;
   continue;
  case 'h':
  default:
   usage ();
  }
  break;
 }
 argc -= optind;
 argv += optind;

 if (argc > 0 && ! strcasecmp (*argv, "help"))
  usage ();

 if (! cdname) {
  cdname = getenv("CDROM");
 }

 if (! cdname)
  cdname = use_cdrom_instead("MUSIC_CD");
 if (! cdname)
  cdname = use_cdrom_instead("CD_DRIVE");
 if (! cdname)
  cdname = use_cdrom_instead("DISC");
 if (! cdname)
  cdname = use_cdrom_instead("CDPLAY");

 if (argc > 0) {
  char buf[80], *p;
  int len, rc;

  for (p=buf; argc-->0; ++argv) {
   len = strlen (*argv);

   if (p + len >= buf + sizeof (buf) - 1)
    usage ();

   if (p > buf)
    *p++ = ' ';

   strcpy (p, *argv);
   p += len;
  }
  *p = 0;
  arg = parse (buf, &cmd);
  rc = run (cmd, arg);
  if (rc < 0 && verbose)
   warn(((void*)0));

  return (rc);
 }

 if (verbose == 1)
  verbose = isatty (0);

 if (verbose) {
  printf ("Compact Disc Control utility, version %s\n", VERSION);
  printf ("Type `?' for command list\n\n");
 }

 for (;;) {
  arg = input (&cmd);
  if (run (cmd, arg) < 0) {
   if (verbose)
    warn(((void*)0));
   close (fd);
   fd = -1;
  }
  fflush (stdout);
 }
}
