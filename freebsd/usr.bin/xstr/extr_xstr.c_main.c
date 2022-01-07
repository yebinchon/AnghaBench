
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGINT ;
 scalar_t__ SIG_DFL ;
 int SIG_IGN ;
 int _PATH_TMP ;
 scalar_t__ cflg ;
 int close (int) ;
 int err (int,char*,...) ;
 int exit (int ) ;
 int flushsh () ;
 int * freopen (char*,char*,int ) ;
 int getopt (int,char**,char*) ;
 int ignore (int ) ;
 int inithash () ;
 int mkstemp (char*) ;
 int onintr ;
 scalar_t__ optind ;
 int process (char*) ;
 scalar_t__ readstd ;
 scalar_t__ signal (int ,int ) ;
 int stdin ;
 int stdout ;
 char* strdup (int ) ;
 char* strings ;
 int unlink (char*) ;
 int usage () ;
 int vflg ;
 int xsdotc () ;

int
main(int argc, char *argv[])
{
 int c;
 int fdesc;

 while ((c = getopt(argc, argv, "-cv")) != -1)
  switch (c) {
  case '-':
   readstd++;
   break;
  case 'c':
   cflg++;
   break;
  case 'v':
   vflg++;
   break;
  default:
   usage();
  }
 argc -= optind;
 argv += optind;

 if (signal(SIGINT, SIG_IGN) == SIG_DFL)
  signal(SIGINT, onintr);
 if (cflg || (argc == 0 && !readstd))
  inithash();
 else {
  strings = strdup(_PATH_TMP);
  if (strings == ((void*)0))
   err(1, "strdup() failed");
  fdesc = mkstemp(strings);
  if (fdesc == -1)
   err(1, "Unable to create temporary file");
  close(fdesc);
 }

 while (readstd || argc > 0) {
  if (freopen("x.c", "w", stdout) == ((void*)0))
   err(1, "x.c");
  if (!readstd && freopen(argv[0], "r", stdin) == ((void*)0))
   err(2, "%s", argv[0]);
  process("x.c");
  if (readstd == 0)
   argc--, argv++;
  else
   readstd = 0;
 }
 flushsh();
 if (cflg == 0)
  xsdotc();
 if (strings[0] == '/')
  ignore(unlink(strings));
 exit(0);
}
