
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ucred {int dummy; } ;
struct sockaddr_in6 {int sin6_addr; } ;
struct ip6_pktopts {int dummy; } ;
struct TYPE_2__ {int inc_fibnum; } ;
struct inpcb {TYPE_1__ inp_inc; } ;
struct in6_addr {int dummy; } ;
struct ifnet {int dummy; } ;


 int in6_selecthlim (struct inpcb*,struct ifnet*) ;
 int in6_selectsrc (int ,struct sockaddr_in6*,struct ip6_pktopts*,struct inpcb*,struct ucred*,struct ifnet**,struct in6_addr*) ;
 int in6_setscope (int *,struct ifnet*,int *) ;

int
in6_selectsrc_socket(struct sockaddr_in6 *dstsock, struct ip6_pktopts *opts,
    struct inpcb *inp, struct ucred *cred, int scope_ambiguous,
    struct in6_addr *srcp, int *hlim)
{
 struct ifnet *retifp;
 uint32_t fibnum;
 int error;

 fibnum = inp->inp_inc.inc_fibnum;
 retifp = ((void*)0);

 error = in6_selectsrc(fibnum, dstsock, opts, inp, cred, &retifp, srcp);
 if (error != 0)
  return (error);

 if (hlim != ((void*)0))
  *hlim = in6_selecthlim(inp, retifp);

 if (retifp == ((void*)0) || scope_ambiguous == 0)
  return (0);
 error = in6_setscope(&dstsock->sin6_addr, retifp, ((void*)0));

 return (error);
}
