
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_opt_nonce {int dummy; } ;
struct ifaddr {int dummy; } ;
struct dadq {int dad_ns_icount; } ;


 scalar_t__ V_dad_enhanced ;
 struct dadq* nd6_dad_find (struct ifaddr*,struct nd_opt_nonce*) ;
 int nd6_dad_rele (struct dadq*) ;
 int panic (char*) ;

__attribute__((used)) static void
nd6_dad_ns_input(struct ifaddr *ifa, struct nd_opt_nonce *ndopt_nonce)
{
 struct dadq *dp;

 if (ifa == ((void*)0))
  panic("ifa == NULL in nd6_dad_ns_input");


 if (V_dad_enhanced == 0)
  ndopt_nonce = ((void*)0);
 dp = nd6_dad_find(ifa, ndopt_nonce);
 if (dp == ((void*)0))
  return;

 dp->dad_ns_icount++;
 nd6_dad_rele(dp);
}
