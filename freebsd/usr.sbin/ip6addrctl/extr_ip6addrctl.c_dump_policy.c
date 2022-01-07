
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct in6_addrpolicy {int preced; int label; scalar_t__ use; int addrmask; int addr; } ;
struct policyqueue {struct in6_addrpolicy pc_policy; } ;
typedef int addrbuf ;


 int NI_MAXHOST ;
 int NI_NUMERICHOST ;
 struct policyqueue* TAILQ_FIRST (int *) ;
 struct policyqueue* TAILQ_NEXT (struct policyqueue*,int ) ;
 scalar_t__ getnameinfo (struct sockaddr*,int,char*,int,int *,int ,int ) ;
 int mask2plen (int *) ;
 int pc_entry ;
 int policyhead ;
 int printf (char*,...) ;
 int snprintf (char*,int,char*,int) ;
 size_t strlen (char*) ;
 int warnx (char*) ;

__attribute__((used)) static void
dump_policy(void)
{
 size_t addrlen;
 char addrbuf[NI_MAXHOST];
 struct in6_addrpolicy *pol;
 struct policyqueue *ent;
 int plen, first = 1;

 for (ent = TAILQ_FIRST(&policyhead); ent;
      ent = TAILQ_NEXT(ent, pc_entry)) {
  pol = &ent->pc_policy;
  if (first) {
   printf("%-30s %5s %5s %8s\n",
          "Prefix", "Prec", "Label", "Use");
   first = 0;
  }

  if ((getnameinfo((struct sockaddr *)&pol->addr,
     sizeof(pol->addr), addrbuf, sizeof(addrbuf),
     ((void*)0), 0, NI_NUMERICHOST))) {
   warnx("getnameinfo for prefix address failed");
   continue;
  }
  if ((plen = mask2plen(&pol->addrmask)) < 0) {
   warnx("invalid address mask");
   continue;
  }
  addrlen = strlen(addrbuf);
  if (addrlen + sizeof("/128") < sizeof(addrbuf)) {
   snprintf(&addrbuf[addrlen],
     sizeof(addrbuf) - addrlen - 1,
     "/%d", plen);
   printf("%-30s", addrbuf);
  } else
   printf("%s/%d", addrbuf, plen);
  printf(" %5d %5d %8llu\n", pol->preced, pol->label,
      (unsigned long long)pol->use);
 }
}
