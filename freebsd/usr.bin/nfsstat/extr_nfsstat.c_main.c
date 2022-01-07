
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct statfs {char* f_mntonname; char* f_mntfromname; int f_fstypename; } ;
struct nfscl_dumpmntopts {char* ndmnt_fname; char* ndmnt_buf; int ndmnt_blen; } ;
typedef int buf ;


 int EPERM ;
 int MNT_NOWAIT ;
 int NFSSTAT_XO_VERSION ;
 int NFSSVC_DUMPMNTOPTS ;
 scalar_t__ atoi (char*) ;
 int errno ;
 int errx (int,char*) ;
 int exit (int) ;
 int exp_intpr (int,int,scalar_t__) ;
 int exp_sidewaysintpr (scalar_t__,int,int,int) ;
 scalar_t__ extra_output ;
 int getmntinfo (struct statfs**,int ) ;
 int getopt (int,char**,char*) ;
 int intpr (int,int) ;
 scalar_t__ modfind (char*) ;
 int nfssvc (int ,struct nfscl_dumpmntopts*) ;
 char* optarg ;
 scalar_t__ optind ;
 int printf (char*,char*,char*,char*) ;
 int printtitle ;
 int strcmp (int ,char*) ;
 int usage () ;
 int widemode ;
 int xo_close_container (char*) ;
 int xo_err (int,char*) ;
 int xo_finish () ;
 int xo_open_container (char*) ;
 int xo_parse_args (int,char**) ;
 int xo_set_version (int ) ;
 int zflag ;

int
main(int argc, char **argv)
{
 u_int interval;
 int clientOnly = -1;
 int serverOnly = -1;
 int newStats = 0;
 int ch;
 char *memf, *nlistf;
 int mntlen, i;
 char buf[1024];
 struct statfs *mntbuf;
 struct nfscl_dumpmntopts dumpmntopts;

 interval = 0;
 memf = nlistf = ((void*)0);

 argc = xo_parse_args(argc, argv);
 if (argc < 0)
  exit(1);

 xo_set_version(NFSSTAT_XO_VERSION);

 while ((ch = getopt(argc, argv, "cdEesWM:mN:w:zq")) != -1)
  switch(ch) {
  case 'M':
   memf = optarg;
   break;
  case 'm':

   mntlen = getmntinfo(&mntbuf, MNT_NOWAIT);
   for (i = 0; i < mntlen; i++) {
    if (strcmp(mntbuf->f_fstypename, "nfs") == 0) {
     dumpmntopts.ndmnt_fname =
         mntbuf->f_mntonname;
     dumpmntopts.ndmnt_buf = buf;
     dumpmntopts.ndmnt_blen = sizeof(buf);
     if (nfssvc(NFSSVC_DUMPMNTOPTS,
         &dumpmntopts) >= 0)
      printf("%s on %s\n%s\n",
          mntbuf->f_mntfromname,
          mntbuf->f_mntonname, buf);
     else if (errno == EPERM)
      errx(1, "Only priviledged users"
          " can use the -m option");
    }
    mntbuf++;
   }
   exit(0);
  case 'N':
   nlistf = optarg;
   break;
  case 'W':
   widemode = 1;
   break;
  case 'w':
   interval = atoi(optarg);
   break;
  case 'c':
   clientOnly = 1;
   if (serverOnly < 0)
    serverOnly = 0;
   break;
  case 'd':
   newStats = 1;
   if (interval == 0)
    interval = 1;
   break;
  case 's':
   serverOnly = 1;
   if (clientOnly < 0)
    clientOnly = 0;
   break;
  case 'z':
   zflag = 1;
   break;
  case 'E':
   if (extra_output != 0)
    xo_err(1, "-e and -E are mutually exclusive");
   extra_output = 2;
   break;
  case 'e':
   if (extra_output != 0)
    xo_err(1, "-e and -E are mutually exclusive");
   extra_output = 1;
   break;
  case 'q':
   printtitle = 0;
   break;
  case '?':
  default:
   usage();
  }
 argc -= optind;
 argv += optind;



 if (*argv) {
  interval = atoi(*argv);
  if (*++argv) {
   nlistf = *argv;
   if (*++argv)
    memf = *argv;
  }
 }

 if (modfind("nfscommon") < 0)
  xo_err(1, "NFS client/server not loaded");

 if (interval) {
  exp_sidewaysintpr(interval, clientOnly, serverOnly,
      newStats);
 } else {
  xo_open_container("nfsstat");
  if (extra_output != 0)
   exp_intpr(clientOnly, serverOnly, extra_output - 1);
  else
   intpr(clientOnly, serverOnly);
  xo_close_container("nfsstat");
 }

 xo_finish();
 exit(0);
}
