
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t order; int name; } ;
struct TYPE_4__ {char* n_name; scalar_t__ n_value; } ;


 unsigned int NNAMES ;
 int O_RDONLY ;
 int _POSIX2_LINE_MAX ;
 int errx (int,char*,char*) ;
 int exit (int) ;
 int filemode () ;
 int getopt (int,char**,char const*) ;
 int humanflag ;
 int * kd ;
 char* kvm_geterr (int *) ;
 int kvm_nlist (int *,TYPE_1__*) ;
 int * kvm_openfiles (void*,int *,int *,int ,char*) ;
 int * memf ;
 TYPE_2__* namelist ;
 TYPE_1__* nl ;
 void* nlistf ;
 void* optarg ;
 int setenv (char*,char*,int) ;
 int strcmp (char const*,char*) ;
 char* strdup (int ) ;
 char* strrchr (char*,char) ;
 int swapflag ;
 int swapmode () ;
 int totalflag ;
 int ttymode () ;
 int usage () ;
 char* usagestr ;
 int usenumflag ;
 int warnx (char*,char*) ;

int
main(int argc, char *argv[])
{
 int ch, quit, ret;
 int fileflag, ttyflag;
 unsigned int i;
 char buf[_POSIX2_LINE_MAX];
 const char *opts;

 fileflag = swapflag = ttyflag = 0;


 opts = strrchr(argv[0], '/');
 if (opts)
  opts++;
 else
  opts = argv[0];
 if (!strcmp(opts, "swapinfo")) {
  swapflag = 1;
  opts = "ghkmM:N:";
  usagestr = "swapinfo [-ghkm] [-M core [-N system]]";
 } else {
  opts = "TM:N:fghkmnst";
  usagestr = "pstat [-Tfghkmnst] [-M core [-N system]]";
 }

 while ((ch = getopt(argc, argv, opts)) != -1)
  switch (ch) {
  case 'f':
   fileflag = 1;
   break;
  case 'g':
   setenv("BLOCKSIZE", "1G", 1);
   break;
  case 'h':
   humanflag = 1;
   break;
  case 'k':
   setenv("BLOCKSIZE", "1K", 1);
   break;
  case 'm':
   setenv("BLOCKSIZE", "1M", 1);
   break;
  case 'M':
   memf = optarg;
   break;
  case 'N':
   nlistf = optarg;
   break;
  case 'n':
   usenumflag = 1;
   break;
  case 's':
   ++swapflag;
   break;
  case 'T':
   totalflag = 1;
   break;
  case 't':
   ttyflag = 1;
   break;
  default:
   usage();
  }




 for (i = 0; i < NNAMES; i++)
  nl[namelist[i].order].n_name = strdup(namelist[i].name);

 if (memf != ((void*)0)) {
  kd = kvm_openfiles(nlistf, memf, ((void*)0), O_RDONLY, buf);
  if (kd == ((void*)0))
   errx(1, "kvm_openfiles: %s", buf);
  if ((ret = kvm_nlist(kd, nl)) != 0) {
   if (ret == -1)
    errx(1, "kvm_nlist: %s", kvm_geterr(kd));
   quit = 0;
   for (i = 0; nl[i].n_name[0] != '\0'; ++i)
    if (nl[i].n_value == 0) {
     quit = 1;
     warnx("undefined symbol: %s",
         nl[i].n_name);
    }
   if (quit)
    exit(1);
  }
 }
 if (!(fileflag | ttyflag | swapflag | totalflag))
  usage();
 if (fileflag || totalflag)
  filemode();
 if (ttyflag)
  ttymode();
 if (swapflag || totalflag)
  swapmode();
 exit (0);
}
