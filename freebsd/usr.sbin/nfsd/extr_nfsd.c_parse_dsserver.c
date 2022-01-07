
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct sockaddr_in6 {int sin6_addr; int sin_addr; } ;
struct sockaddr_in {int sin6_addr; int sin_addr; } ;
struct nfsd_nfsd_args {char* addr; int addrlen; char* dnshost; int dnshostlen; char* dspath; int dspathlen; char* mdspath; int mdspathlen; } ;
struct addrinfo {int ai_flags; scalar_t__ ai_family; int ai_addrlen; char const* ai_canonname; TYPE_1__* ai_addr; struct addrinfo* ai_next; int ai_protocol; int ai_socktype; } ;
typedef int sin6 ;
typedef int sin ;
typedef int ip6 ;
typedef int hints ;
struct TYPE_2__ {scalar_t__ sa_family; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int AI_ADDRCONFIG ;
 int AI_CANONNAME ;
 int IN6_IS_ADDR_LINKLOCAL (int *) ;
 int INET6_ADDRSTRLEN ;
 int IPPROTO_TCP ;
 scalar_t__ PF_UNSPEC ;
 int SOCK_STREAM ;
 int err (int,char*,...) ;
 int errx (int,char*) ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char*,int *,struct addrinfo*,struct addrinfo**) ;
 char* inet_ntoa (int ) ;
 char* inet_ntop (scalar_t__,int *,char*,int) ;
 char* malloc (size_t) ;
 int memcpy (struct sockaddr_in6*,TYPE_1__*,int) ;
 int memset (struct addrinfo*,int ,int) ;
 char* realloc (char*,size_t) ;
 int snprintf (char*,int,char*,int,int) ;
 int strcat (char*,char*) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char const*) ;
 char* strdup (char const*) ;
 void* strlen (char const*) ;
 int usage () ;

__attribute__((used)) static void
parse_dsserver(const char *optionarg, struct nfsd_nfsd_args *nfsdargp)
{
 char *cp, *cp2, *dsaddr, *dshost, *dspath, *dsvol, nfsprt[9];
 char *mdspath, *mdsp, ip6[INET6_ADDRSTRLEN];
 const char *ad;
 int ecode;
 u_int adsiz, dsaddrcnt, dshostcnt, dspathcnt, hostsiz, pathsiz;
 u_int mdspathcnt;
 size_t dsaddrsiz, dshostsiz, dspathsiz, nfsprtsiz, mdspathsiz;
 struct addrinfo hints, *ai_tcp, *res;
 struct sockaddr_in sin;
 struct sockaddr_in6 sin6;

 cp = strdup(optionarg);
 if (cp == ((void*)0))
  errx(1, "Out of memory");


 dspathsiz = 1024;
 dspathcnt = 0;
 dspath = malloc(dspathsiz);
 if (dspath == ((void*)0))
  errx(1, "Out of memory");
 dshostsiz = 1024;
 dshostcnt = 0;
 dshost = malloc(dshostsiz);
 if (dshost == ((void*)0))
  errx(1, "Out of memory");
 dsaddrsiz = 1024;
 dsaddrcnt = 0;
 dsaddr = malloc(dsaddrsiz);
 if (dsaddr == ((void*)0))
  errx(1, "Out of memory");
 mdspathsiz = 1024;
 mdspathcnt = 0;
 mdspath = malloc(mdspathsiz);
 if (mdspath == ((void*)0))
  errx(1, "Out of memory");


 snprintf(nfsprt, 9, ".%d.%d", 2049 >> 8, 2049 & 0xff);
 nfsprtsiz = strlen(nfsprt);

 ai_tcp = ((void*)0);

 do {
  cp2 = strchr(cp, ',');
  if (cp2 != ((void*)0)) {

   *cp2++ = '\0';
   if (*cp2 == '\0')
    usage();
  }

  dsvol = strchr(cp, ':');
  if (dsvol == ((void*)0) || *(dsvol + 1) == '\0')
   usage();
  *dsvol++ = '\0';


  mdsp = strchr(dsvol, '#');
  if (mdsp != ((void*)0)) {
   if (*(mdsp + 1) == '\0' || mdsp <= dsvol)
    usage();
   *mdsp++ = '\0';
  }


  pathsiz = strlen(dsvol);
  if (dspathcnt + pathsiz + 1 > dspathsiz) {
   dspathsiz *= 2;
   dspath = realloc(dspath, dspathsiz);
   if (dspath == ((void*)0))
    errx(1, "Out of memory");
  }
  strcpy(&dspath[dspathcnt], dsvol);
  dspathcnt += pathsiz + 1;


  if (mdsp != ((void*)0))
   pathsiz = strlen(mdsp);
  else
   pathsiz = 0;
  if (mdspathcnt + pathsiz + 1 > mdspathsiz) {
   mdspathsiz *= 2;
   mdspath = realloc(mdspath, mdspathsiz);
   if (mdspath == ((void*)0))
    errx(1, "Out of memory");
  }
  if (mdsp != ((void*)0))
   strcpy(&mdspath[mdspathcnt], mdsp);
  else
   mdspath[mdspathcnt] = '\0';
  mdspathcnt += pathsiz + 1;

  if (ai_tcp != ((void*)0))
   freeaddrinfo(ai_tcp);


  memset(&hints, 0, sizeof(hints));
  hints.ai_flags = AI_CANONNAME | AI_ADDRCONFIG;
  hints.ai_family = PF_UNSPEC;
  hints.ai_socktype = SOCK_STREAM;
  hints.ai_protocol = IPPROTO_TCP;
  ecode = getaddrinfo(cp, ((void*)0), &hints, &ai_tcp);
  if (ecode != 0)
   err(1, "getaddrinfo pnfs: %s %s", cp,
       gai_strerror(ecode));
  ad = ((void*)0);
  for (res = ai_tcp; res != ((void*)0); res = res->ai_next) {
   if (res->ai_addr->sa_family == AF_INET) {
    if (res->ai_addrlen < sizeof(sin))
     err(1, "getaddrinfo() returned "
         "undersized IPv4 address");




    memcpy(&sin, res->ai_addr, sizeof(sin));
    ad = inet_ntoa(sin.sin_addr);
    break;
   } else if (res->ai_family == AF_INET6) {
    if (res->ai_addrlen < sizeof(sin6))
     err(1, "getaddrinfo() returned "
         "undersized IPv6 address");




    memcpy(&sin6, res->ai_addr, sizeof(sin6));
    ad = inet_ntop(AF_INET6, &sin6.sin6_addr, ip6,
        sizeof(ip6));
    if (ad != ((void*)0) &&
        !IN6_IS_ADDR_LINKLOCAL(&sin6.sin6_addr))
     break;
   }
  }
  if (ad == ((void*)0))
   err(1, "No IP address for %s", cp);


  adsiz = strlen(ad);
  if (dsaddrcnt + adsiz + nfsprtsiz + 1 > dsaddrsiz) {
   dsaddrsiz *= 2;
   dsaddr = realloc(dsaddr, dsaddrsiz);
   if (dsaddr == ((void*)0))
    errx(1, "Out of memory");
  }
  strcpy(&dsaddr[dsaddrcnt], ad);
  strcat(&dsaddr[dsaddrcnt], nfsprt);
  dsaddrcnt += adsiz + nfsprtsiz + 1;


  hostsiz = strlen(ai_tcp->ai_canonname);
  if (dshostcnt + hostsiz + 1 > dshostsiz) {
   dshostsiz *= 2;
   dshost = realloc(dshost, dshostsiz);
   if (dshost == ((void*)0))
    errx(1, "Out of memory");
  }
  strcpy(&dshost[dshostcnt], ai_tcp->ai_canonname);
  dshostcnt += hostsiz + 1;

  cp = cp2;
 } while (cp != ((void*)0));

 nfsdargp->addr = dsaddr;
 nfsdargp->addrlen = dsaddrcnt;
 nfsdargp->dnshost = dshost;
 nfsdargp->dnshostlen = dshostcnt;
 nfsdargp->dspath = dspath;
 nfsdargp->dspathlen = dspathcnt;
 nfsdargp->mdspath = mdspath;
 nfsdargp->mdspathlen = mdspathcnt;
 freeaddrinfo(ai_tcp);
}
