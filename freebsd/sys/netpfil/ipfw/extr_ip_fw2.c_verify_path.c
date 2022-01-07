
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct nhop4_basic {int nh_flags; struct ifnet* nh_ifp; } ;
struct in_addr {int dummy; } ;
struct ifnet {int dummy; } ;


 int NHF_BLACKHOLE ;
 int NHF_DEFAULT ;
 int NHF_REJECT ;
 int NHR_IFAIF ;
 scalar_t__ fib4_lookup_nh_basic (int ,struct in_addr,int ,int ,struct nhop4_basic*) ;

__attribute__((used)) static int
verify_path(struct in_addr src, struct ifnet *ifp, u_int fib)
{

 return 0;
}
