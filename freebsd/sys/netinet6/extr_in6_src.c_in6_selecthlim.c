
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct nhop6_basic {struct ifnet* nh_ifp; } ;
struct TYPE_3__ {int inc_fibnum; } ;
struct inpcb {scalar_t__ in6p_hops; int in6p_faddr; TYPE_1__ inp_inc; } ;
struct in6_addr {int dummy; } ;
struct ifnet {int dummy; } ;
struct TYPE_4__ {int chlim; } ;


 int IN6_IS_ADDR_UNSPECIFIED (int *) ;
 TYPE_2__* ND_IFINFO (struct ifnet*) ;
 int V_ip6_defhlim ;
 scalar_t__ fib6_lookup_nh_basic (int ,struct in6_addr*,int ,int ,int ,struct nhop6_basic*) ;
 int in6_splitscope (int *,struct in6_addr*,int *) ;

int
in6_selecthlim(struct inpcb *inp, struct ifnet *ifp)
{

 if (inp && inp->in6p_hops >= 0)
  return (inp->in6p_hops);
 else if (ifp)
  return (ND_IFINFO(ifp)->chlim);
 else if (inp && !IN6_IS_ADDR_UNSPECIFIED(&inp->in6p_faddr)) {
  struct nhop6_basic nh6;
  struct in6_addr dst;
  uint32_t fibnum, scopeid;
  int hlim;

  fibnum = inp->inp_inc.inc_fibnum;
  in6_splitscope(&inp->in6p_faddr, &dst, &scopeid);
  if (fib6_lookup_nh_basic(fibnum, &dst, scopeid, 0, 0, &nh6)==0){
   hlim = ND_IFINFO(nh6.nh_ifp)->chlim;
   return (hlim);
  }
 }
 return (V_ip6_defhlim);
}
