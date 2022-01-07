
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dump_lockstate (char*) ;
 int dump_openstate () ;
 int errx (int,char*) ;
 int exit (int ) ;
 int getopt (int,char**,char*) ;
 scalar_t__ modfind (char*) ;
 char* optarg ;
 scalar_t__ optind ;
 int usage () ;

int
main(int argc, char **argv)
{
 int ch, openstate;
 char *lockfile;

 if (modfind("nfsd") < 0)
  errx(1, "nfsd not loaded - self terminating");
 openstate = 0;
 lockfile = ((void*)0);
 while ((ch = getopt(argc, argv, "ol:")) != -1)
  switch (ch) {
  case 'o':
   openstate = 1;
   break;
  case 'l':
   lockfile = optarg;
   break;
  default:
   usage();
  }
 argc -= optind;
 argv += optind;

 if (openstate == 0 && lockfile == ((void*)0))
  openstate = 1;
 else if (openstate != 0 && lockfile != ((void*)0))
  errx(1, "-o and -l cannot both be specified");





 if (openstate != 0)
  dump_openstate();
 else
  dump_lockstate(lockfile);
 exit(0);
}
