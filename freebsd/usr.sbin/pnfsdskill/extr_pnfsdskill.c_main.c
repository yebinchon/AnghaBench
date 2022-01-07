
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_pnfsd_args {char* dspath; int op; } ;


 int NFSSVC_PNFSDS ;
 int PNFSDOP_DELDSSERVER ;
 int PNFSDOP_FORCEDELDS ;
 int err (int,char*,char*) ;
 int errx (int,char*) ;
 scalar_t__ geteuid () ;
 int getopt_long (int,char**,char*,int ,int *) ;
 int longopts ;
 scalar_t__ nfssvc (int ,struct nfsd_pnfsd_args*) ;
 scalar_t__ optind ;
 int usage () ;

int
main(int argc, char *argv[])
{
 struct nfsd_pnfsd_args pnfsdarg;
 int ch, force;

 if (geteuid() != 0)
  errx(1, "Must be run as root/su");
 force = 0;
 while ((ch = getopt_long(argc, argv, "f", longopts, ((void*)0))) != -1) {
  switch (ch) {
  case 'f':
   force = 1;
   break;
  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;
 if (argc != 1)
  usage();

 if (force != 0)
  pnfsdarg.op = PNFSDOP_FORCEDELDS;
 else
  pnfsdarg.op = PNFSDOP_DELDSSERVER;
 pnfsdarg.dspath = *argv;
 if (nfssvc(NFSSVC_PNFSDS, &pnfsdarg) < 0)
  err(1, "Can't kill %s", *argv);
}
