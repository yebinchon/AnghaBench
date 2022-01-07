
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
typedef int strvised ;
struct grouplist {char* gr_name; struct grouplist* gr_next; } ;
struct exportslist {char* ex_dirp; struct exportslist* ex_next; struct grouplist* ex_groups; } ;




 int DODUMP ;
 int DOEXPORTS ;
 int DOPARSABLEEXPORTS ;
 int MNTPATHLEN ;
 int MOUNTPROC_DUMP ;
 int MOUNTPROC_EXPORT ;
 int MOUNTPROG ;
 int VIS_GLOB ;
 int VIS_NL ;
 int clnt_perrno (int) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int exit (int ) ;
 struct exportslist* exportslist ;
 int getopt (int,char**,char*) ;
 int mntdump ;
 scalar_t__ optind ;
 int print_dump (int ) ;
 int printf (char*,...) ;
 int strsnvis (char*,int,char*,int,char*) ;
 int tcp_callrpc (char const*,int ,int,int ,int ,char*,int ,char*) ;
 int type ;
 int usage () ;
 scalar_t__ xdr_exportslist ;
 scalar_t__ xdr_mntdump ;
 scalar_t__ xdr_void ;

int
main(int argc, char **argv)
{
 char strvised[MNTPATHLEN * 4 + 1];
 register struct exportslist *exp;
 register struct grouplist *grp;
 register int rpcs = 0, mntvers = 3;
 const char *host;
 int ch, estat, nbytes;

 while ((ch = getopt(argc, argv, "adEe13")) != -1)
  switch (ch) {
  case 'a':
   if (type == 0) {
    type = 129;
    rpcs |= DODUMP;
   } else
    usage();
   break;
  case 'd':
   if (type == 0) {
    type = 128;
    rpcs |= DODUMP;
   } else
    usage();
   break;
  case 'E':
   rpcs |= DOPARSABLEEXPORTS;
   break;
  case 'e':
   rpcs |= DOEXPORTS;
   break;
  case '1':
   mntvers = 1;
   break;
  case '3':
   mntvers = 3;
   break;
  case '?':
  default:
   usage();
  }
 argc -= optind;
 argv += optind;

 if ((rpcs & DOPARSABLEEXPORTS) != 0) {
  if ((rpcs & DOEXPORTS) != 0)
   errx(1, "-E cannot be used with -e");
  if ((rpcs & DODUMP) != 0)
   errx(1, "-E cannot be used with -a or -d");
 }

 if (argc > 0)
  host = *argv;
 else
  host = "localhost";

 if (rpcs == 0)
  rpcs = DODUMP;

 if (rpcs & DODUMP)
  if ((estat = tcp_callrpc(host, MOUNTPROG, mntvers,
   MOUNTPROC_DUMP, (xdrproc_t)xdr_void, (char *)0,
   (xdrproc_t)xdr_mntdump, (char *)&mntdump)) != 0) {
   clnt_perrno(estat);
   errx(1, "can't do mountdump rpc");
  }
 if (rpcs & (DOEXPORTS | DOPARSABLEEXPORTS))
  if ((estat = tcp_callrpc(host, MOUNTPROG, mntvers,
   MOUNTPROC_EXPORT, (xdrproc_t)xdr_void, (char *)0,
   (xdrproc_t)xdr_exportslist, (char *)&exportslist)) != 0) {
   clnt_perrno(estat);
   errx(1, "can't do exports rpc");
  }


 if (rpcs & DODUMP) {
  switch (type) {
  case 129:
   printf("All mount points on %s:\n", host);
   break;
  case 128:
   printf("Directories on %s:\n", host);
   break;
  default:
   printf("Hosts on %s:\n", host);
   break;
  }
  print_dump(mntdump);
 }
 if (rpcs & DOEXPORTS) {
  printf("Exports list on %s:\n", host);
  exp = exportslist;
  while (exp) {
   printf("%-34s ", exp->ex_dirp);
   grp = exp->ex_groups;
   if (grp == ((void*)0)) {
    printf("Everyone\n");
   } else {
    while (grp) {
     printf("%s ", grp->gr_name);
     grp = grp->gr_next;
    }
    printf("\n");
   }
   exp = exp->ex_next;
  }
 }
 if (rpcs & DOPARSABLEEXPORTS) {
  exp = exportslist;
  while (exp) {
   nbytes = strsnvis(strvised, sizeof(strvised),
       exp->ex_dirp, VIS_GLOB | VIS_NL, "\"'$");
   if (nbytes == -1)
    err(1, "strsnvis");
   printf("%s\n", strvised);
   exp = exp->ex_next;
  }
 }
 exit(0);
}
