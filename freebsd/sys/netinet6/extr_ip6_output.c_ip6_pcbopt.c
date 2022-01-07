
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ucred {int dummy; } ;
struct ip6_pktopts {int dummy; } ;


 int ENOBUFS ;
 int M_IP6OPT ;
 int M_NOWAIT ;
 int ip6_initpktopts (struct ip6_pktopts*) ;
 int ip6_setpktopt (int,int *,int,struct ip6_pktopts*,struct ucred*,int,int ,int) ;
 struct ip6_pktopts* malloc (int,int ,int ) ;

__attribute__((used)) static int
ip6_pcbopt(int optname, u_char *buf, int len, struct ip6_pktopts **pktopt,
    struct ucred *cred, int uproto)
{
 struct ip6_pktopts *opt;

 if (*pktopt == ((void*)0)) {
  *pktopt = malloc(sizeof(struct ip6_pktopts), M_IP6OPT,
      M_NOWAIT);
  if (*pktopt == ((void*)0))
   return (ENOBUFS);
  ip6_initpktopts(*pktopt);
 }
 opt = *pktopt;

 return (ip6_setpktopt(optname, buf, len, opt, cred, 1, 0, uproto));
}
