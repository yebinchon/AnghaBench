
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {scalar_t__ tv_sec; } ;
struct sockaddr_in6 {int sin6_addr; int sin6_len; } ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {scalar_t__ autonomous; scalar_t__ onlink; } ;
struct TYPE_3__ {int sin6_len; } ;
struct in6_prefix {size_t advrtrs; int prefixlen; int flags; scalar_t__ vltime; scalar_t__ pltime; scalar_t__ expire; int refcnt; int if_index; TYPE_2__ raflags; TYPE_1__ prefix; } ;
struct in6_nbrinfo {int state; } ;
typedef int namebuf ;
typedef int mib ;


 int CTL_NET ;
 int ICMPV6CTL_ND6_PRLIST ;
 int IPPROTO_ICMPV6 ;
 scalar_t__ ND6_INFINITE_LIFETIME ;




 int NDPRF_DETACHED ;
 int NDPRF_HOME ;
 int NDPRF_ONLINK ;
 int NI_MAXHOST ;
 void* NI_NUMERICHOST ;
 int PF_INET6 ;
 int err (int,char*) ;
 int free (char*) ;
 scalar_t__ getnameinfo (struct sockaddr*,int ,char*,int,int *,int ,int const) ;
 struct in6_nbrinfo* getnbrinfo (int *,int ,int ) ;
 int gettimeofday (struct timeval*,int ) ;
 char* if_indextoname (int ,int ) ;
 int ifix_buf ;
 char* malloc (size_t) ;
 scalar_t__ nflag ;
 int printf (char*,...) ;
 char* sec2str (scalar_t__) ;
 int strlcpy (char*,char*,int) ;
 scalar_t__ sysctl (int*,int,char*,size_t*,int *,int ) ;

__attribute__((used)) static void
plist()
{
 int mib[] = { CTL_NET, PF_INET6, IPPROTO_ICMPV6, ICMPV6CTL_ND6_PRLIST };
 char *buf;
 struct in6_prefix *p, *ep, *n;
 struct sockaddr_in6 *advrtr;
 size_t l;
 struct timeval now;
 const int niflags = NI_NUMERICHOST;
 int ninflags = nflag ? NI_NUMERICHOST : 0;
 char namebuf[NI_MAXHOST];

 if (sysctl(mib, sizeof(mib) / sizeof(mib[0]), ((void*)0), &l, ((void*)0), 0) < 0) {
  err(1, "sysctl(ICMPV6CTL_ND6_PRLIST)");

 }
 buf = malloc(l);
 if (!buf) {
  err(1, "malloc");

 }
 if (sysctl(mib, sizeof(mib) / sizeof(mib[0]), buf, &l, ((void*)0), 0) < 0) {
  err(1, "sysctl(ICMPV6CTL_ND6_PRLIST)");

 }

 ep = (struct in6_prefix *)(buf + l);
 for (p = (struct in6_prefix *)buf; p < ep; p = n) {
  advrtr = (struct sockaddr_in6 *)(p + 1);
  n = (struct in6_prefix *)&advrtr[p->advrtrs];

  if (getnameinfo((struct sockaddr *)&p->prefix,
      p->prefix.sin6_len, namebuf, sizeof(namebuf),
      ((void*)0), 0, niflags) != 0)
   strlcpy(namebuf, "?", sizeof(namebuf));
  printf("%s/%d if=%s\n", namebuf, p->prefixlen,
      if_indextoname(p->if_index, ifix_buf));

  gettimeofday(&now, 0);




  printf("flags=%s%s%s%s%s",
      p->raflags.onlink ? "L" : "",
      p->raflags.autonomous ? "A" : "",
      (p->flags & NDPRF_ONLINK) != 0 ? "O" : "",
      (p->flags & NDPRF_DETACHED) != 0 ? "D" : "",



      ""

      );
  if (p->vltime == ND6_INFINITE_LIFETIME)
   printf(" vltime=infinity");
  else
   printf(" vltime=%lu", (unsigned long)p->vltime);
  if (p->pltime == ND6_INFINITE_LIFETIME)
   printf(", pltime=infinity");
  else
   printf(", pltime=%lu", (unsigned long)p->pltime);
  if (p->expire == 0)
   printf(", expire=Never");
  else if (p->expire >= now.tv_sec)
   printf(", expire=%s",
       sec2str(p->expire - now.tv_sec));
  else
   printf(", expired");
  printf(", ref=%d", p->refcnt);
  printf("\n");




  if (p->advrtrs) {
   int j;
   struct sockaddr_in6 *sin6;

   sin6 = advrtr;
   printf("  advertised by\n");
   for (j = 0; j < p->advrtrs; j++) {
    struct in6_nbrinfo *nbi;

    if (getnameinfo((struct sockaddr *)sin6,
        sin6->sin6_len, namebuf, sizeof(namebuf),
        ((void*)0), 0, ninflags) != 0)
     strlcpy(namebuf, "?", sizeof(namebuf));
    printf("    %s", namebuf);

    nbi = getnbrinfo(&sin6->sin6_addr,
        p->if_index, 0);
    if (nbi) {
     switch (nbi->state) {
     case 129:
     case 128:
     case 131:
     case 130:
      printf(" (reachable)\n");
      break;
     default:
      printf(" (unreachable)\n");
     }
    } else
     printf(" (no neighbor state)\n");
    sin6++;
   }
  } else
   printf("  No advertising router\n");
 }
 free(buf);
}
