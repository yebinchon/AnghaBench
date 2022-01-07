
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct statfs {char* f_fstypename; char* f_mntonname; int f_mntfromname; } ;
struct stat {int st_mode; } ;
struct TYPE_5__ {scalar_t__ s_addr; } ;
struct sockaddr_in6 {int sin6_addr; TYPE_1__ sin_addr; } ;
struct sockaddr_in {int sin6_addr; TYPE_1__ sin_addr; } ;
struct TYPE_8__ {int sin6_addr; } ;
struct TYPE_6__ {scalar_t__ s_addr; } ;
struct TYPE_7__ {scalar_t__ sin_family; TYPE_2__ sin_addr; } ;
struct pnfsdsfile {TYPE_4__ dsf_sin6; TYPE_3__ dsf_sin; } ;
struct nfsd_pnfsd_args {char* dspath; char* curdspath; char* mdspath; int op; } ;
struct addrinfo {scalar_t__ ai_family; int ai_addrlen; struct addrinfo* ai_next; int ai_addr; void* ai_socktype; } ;
typedef int ssize_t ;
typedef int sin6 ;
typedef int sin ;
typedef int mirrorlevel ;
typedef int host ;
typedef int hints ;
typedef int dsfile ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ EEXIST ;
 int EXTATTR_NAMESPACE_SYSTEM ;
 scalar_t__ IN6_ARE_ADDR_EQUAL (int *,int *) ;
 scalar_t__ MNAMELEN ;
 int NFSDEV_MAXMIRRORS ;
 int NFSSVC_PNFSDS ;
 scalar_t__ NI_MAXHOST ;
 void* PF_UNSPEC ;
 int PNFSDOP_COPYMR ;
 void* SOCK_STREAM ;
 int S_ISDIR (int ) ;
 int err (int,char*,char*) ;
 scalar_t__ errno ;
 int errx (int,char*,...) ;
 int exit (int ) ;
 int extattr_get_file (char*,int ,char*,struct pnfsdsfile*,int) ;
 int freeaddrinfo (struct addrinfo*) ;
 scalar_t__ getaddrinfo (char*,int *,struct addrinfo*,struct addrinfo**) ;
 scalar_t__ geteuid () ;
 int getopt_long (int,char**,char*,int ,int *) ;
 int longopts ;
 int memcpy (struct sockaddr_in6*,int ,int) ;
 int memset (struct addrinfo*,int ,int) ;
 int nfssvc (int ,struct nfsd_pnfsd_args*) ;
 void* optarg ;
 scalar_t__ optind ;
 scalar_t__ stat (char*,struct stat*) ;
 scalar_t__ statfs (char*,struct statfs*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlcpy (char*,int ,int) ;
 int sysctlbyname (char*,int*,size_t*,int *,int ) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 struct nfsd_pnfsd_args pnfsdarg;
 struct pnfsdsfile dsfile[NFSDEV_MAXMIRRORS];
 struct stat sb;
 struct statfs sf;
 struct addrinfo hints, *res, *nres;
 struct sockaddr_in sin;
 struct sockaddr_in6 sin6;
 ssize_t xattrsize, xattrsize2;
 size_t mirlen;
 int ch, fnd, fndzero, i, migrateit, mirrorcnt, mirrorit, ret;
 int mirrorlevel;
 char host[MNAMELEN + NI_MAXHOST + 2], *cp;

 if (geteuid() != 0)
  errx(1, "Must be run as root/su");

 mirrorit = migrateit = 0;
 pnfsdarg.dspath = pnfsdarg.curdspath = ((void*)0);
 while ((ch = getopt_long(argc, argv, "m:r:", longopts, ((void*)0))) != -1) {
  switch (ch) {
  case 'm':

   if (mirrorit != 0)
    errx(1, "-r and -m are mutually exclusive");
   migrateit = 1;
   pnfsdarg.curdspath = optarg;
   break;
  case 'r':

   if (migrateit != 0)
    errx(1, "-r and -m are mutually exclusive");
   mirrorit = 1;
   pnfsdarg.dspath = optarg;
   break;
  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;
 if (migrateit != 0) {
  if (argc != 2)
   usage();
  pnfsdarg.dspath = *argv++;
 } else if (argc != 1)
  usage();


 mirlen = sizeof(mirrorlevel);
 ret = sysctlbyname("vfs.nfs.pnfsmirror", &mirrorlevel, &mirlen,
     ((void*)0), 0);
 if (ret < 0)
  errx(1, "Can't get vfs.nfs.pnfsmirror");

 if (pnfsdarg.dspath != ((void*)0) && pnfsdarg.curdspath != ((void*)0) &&
     strcmp(pnfsdarg.dspath, pnfsdarg.curdspath) == 0)
  errx(1, "Can't migrate to same server");





 xattrsize = extattr_get_file(*argv, EXTATTR_NAMESPACE_SYSTEM,
     "pnfsd.dsfile", dsfile, sizeof(dsfile));
 mirrorcnt = xattrsize / sizeof(struct pnfsdsfile);
 xattrsize2 = mirrorcnt * sizeof(struct pnfsdsfile);
 if (mirrorcnt < 1 || xattrsize != xattrsize2)
  errx(1, "Can't get extattr pnfsd.dsfile for %s", *argv);


 fndzero = 0;
 for (i = 0; i < mirrorcnt; i++) {
  if (dsfile[i].dsf_sin.sin_family == AF_INET &&
      dsfile[i].dsf_sin.sin_addr.s_addr == 0)
   fndzero = 1;
 }


 if (mirrorit == 0 && migrateit == 0 && (mirrorlevel < 2 ||
     (fndzero == 0 && mirrorcnt >= mirrorlevel) ||
     (fndzero != 0 && mirrorcnt > mirrorlevel)))
  exit(0);


 if (mirrorit != 0 && (fndzero == 0 || mirrorlevel < 2 ||
     mirrorcnt < 2 || mirrorcnt > mirrorlevel))
  exit(0);


 if (pnfsdarg.dspath != ((void*)0)) {

  if (stat(pnfsdarg.dspath, &sb) < 0)
   errx(1, "Can't stat %s", pnfsdarg.dspath);
  if (!S_ISDIR(sb.st_mode))
   errx(1, "%s is not a directory", pnfsdarg.dspath);
  if (statfs(pnfsdarg.dspath, &sf) < 0)
   errx(1, "Can't fsstat %s", pnfsdarg.dspath);
  if (strcmp(sf.f_fstypename, "nfs") != 0)
   errx(1, "%s is not an NFS mount", pnfsdarg.dspath);
  if (strcmp(sf.f_mntonname, pnfsdarg.dspath) != 0)
   errx(1, "%s is not the mounted-on dir for the new DS",
       pnfsdarg.dspath);





  strlcpy(host, sf.f_mntfromname, sizeof(host));
  cp = strchr(host, ':');
  if (cp == ((void*)0))
   errx(1, "No <host>: in mount %s", host);
  *cp = '\0';
  memset(&hints, 0, sizeof(hints));
  hints.ai_family = PF_UNSPEC;
  hints.ai_socktype = SOCK_STREAM;
  if (getaddrinfo(host, ((void*)0), &hints, &res) != 0)
   errx(1, "Can't get address for %s", host);
  for (i = 0; i < mirrorcnt; i++) {
   nres = res;
   while (nres != ((void*)0)) {
    if (dsfile[i].dsf_sin.sin_family ==
        nres->ai_family) {





     if (nres->ai_family == AF_INET &&
         nres->ai_addrlen >= sizeof(sin)) {
      memcpy(&sin, nres->ai_addr,
          sizeof(sin));
      if (sin.sin_addr.s_addr ==
          dsfile[i].dsf_sin.sin_addr.s_addr)
       exit(0);
     } else if (nres->ai_family ==
         AF_INET6 && nres->ai_addrlen >=
         sizeof(sin6)) {
      memcpy(&sin6, nres->ai_addr,
          sizeof(sin6));
      if (IN6_ARE_ADDR_EQUAL(&sin6.sin6_addr,
          &dsfile[i].dsf_sin6.sin6_addr))
       exit(0);
     }
    }
    nres = nres->ai_next;
   }
  }
  freeaddrinfo(res);
 }


 if (pnfsdarg.curdspath != ((void*)0)) {

  if (stat(pnfsdarg.curdspath, &sb) < 0)
   errx(1, "Can't stat %s", pnfsdarg.curdspath);
  if (!S_ISDIR(sb.st_mode))
   errx(1, "%s is not a directory", pnfsdarg.curdspath);
  if (statfs(pnfsdarg.curdspath, &sf) < 0)
   errx(1, "Can't fsstat %s", pnfsdarg.curdspath);
  if (strcmp(sf.f_fstypename, "nfs") != 0)
   errx(1, "%s is not an NFS mount", pnfsdarg.curdspath);
  if (strcmp(sf.f_mntonname, pnfsdarg.curdspath) != 0)
   errx(1, "%s is not the mounted-on dir of the cur DS",
       pnfsdarg.curdspath);





  strlcpy(host, sf.f_mntfromname, sizeof(host));
  cp = strchr(host, ':');
  if (cp == ((void*)0))
   errx(1, "No <host>: in mount %s", host);
  *cp = '\0';
  memset(&hints, 0, sizeof(hints));
  hints.ai_family = PF_UNSPEC;
  hints.ai_socktype = SOCK_STREAM;
  if (getaddrinfo(host, ((void*)0), &hints, &res) != 0)
   errx(1, "Can't get address for %s", host);
  fnd = 0;
  for (i = 0; i < mirrorcnt && fnd == 0; i++) {
   nres = res;
   while (nres != ((void*)0)) {
    if (dsfile[i].dsf_sin.sin_family ==
        nres->ai_family) {



     if (nres->ai_family == AF_INET &&
         nres->ai_addrlen >= sizeof(sin)) {
      memcpy(&sin, nres->ai_addr,
          sizeof(sin));
      if (sin.sin_addr.s_addr ==
          dsfile[i].dsf_sin.sin_addr.s_addr) {
       fnd = 1;
       break;
      }
     } else if (nres->ai_family ==
         AF_INET6 && nres->ai_addrlen >=
         sizeof(sin6)) {
      memcpy(&sin6, nres->ai_addr,
          sizeof(sin6));
      if (IN6_ARE_ADDR_EQUAL(&sin6.sin6_addr,
          &dsfile[i].dsf_sin6.sin6_addr)) {
       fnd = 1;
       break;
      }
     }
    }
    nres = nres->ai_next;
   }
  }
  freeaddrinfo(res);




  if (fnd == 0)
   exit(0);
 }


 pnfsdarg.op = PNFSDOP_COPYMR;
 pnfsdarg.mdspath = *argv;
 ret = nfssvc(NFSSVC_PNFSDS, &pnfsdarg);
 if (ret < 0 && errno != EEXIST)
  err(1, "Copymr failed for file %s", *argv);
 exit(0);
}
