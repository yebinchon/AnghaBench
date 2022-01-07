
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addrpolicy {int dummy; } ;
struct policyqueue {struct in6_addrpolicy pc_policy; } ;


 int CTL_NET ;
 int IPPROTO_IPV6 ;
 int IPV6CTL_ADDRCTLPOLICY ;
 int PF_INET6 ;
 int TAILQ_INSERT_TAIL (int *,struct policyqueue*,int ) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int free (struct in6_addrpolicy*) ;
 void* malloc (int) ;
 int nitems (int*) ;
 int pc_entry ;
 int policyhead ;
 int printf (char*) ;
 scalar_t__ sysctl (int*,int ,struct in6_addrpolicy*,size_t*,int *,int ) ;

__attribute__((used)) static void
get_policy(void)
{
 int mib[] = { CTL_NET, PF_INET6, IPPROTO_IPV6, IPV6CTL_ADDRCTLPOLICY };
 size_t l;
 struct in6_addrpolicy *buf;
 struct in6_addrpolicy *pol, *ep;

 if (sysctl(mib, nitems(mib), ((void*)0), &l, ((void*)0), 0) < 0) {
  err(1, "sysctl(IPV6CTL_ADDRCTLPOLICY)");

 }
 if (l == 0) {
  printf("no source-address-selection policy is installed\n");
  return;
 }
 if ((buf = malloc(l)) == ((void*)0)) {
  errx(1, "malloc failed");

 }
 if (sysctl(mib, nitems(mib), buf, &l, ((void*)0), 0) < 0) {
  err(1, "sysctl(IPV6CTL_ADDRCTLPOLICY)");

 }

 ep = buf + l/sizeof(*buf);
 for (pol = buf; pol + 1 <= ep; pol++) {
  struct policyqueue *new;

  if ((new = malloc(sizeof(*new))) == ((void*)0))
   errx(1, "malloc failed\n");
  new->pc_policy = *pol;
  TAILQ_INSERT_TAIL(&policyhead, new, pc_entry);
 }

 free(buf);
}
