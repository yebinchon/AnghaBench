
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int sin6_addr; } ;
struct in6_ifaddr {TYPE_2__ ia_addr; } ;
struct ifnet {int if_flags; int if_drv_flags; } ;
struct dadq {int * dad_nonce; int dad_ns_ocount; int dad_ns_tcount; TYPE_1__* dad_ifa; } ;
struct TYPE_3__ {struct ifnet* ifa_ifp; } ;


 int IFF_DRV_RUNNING ;
 int IFF_UP ;
 int ND_OPT_NONCE_LEN32 ;
 scalar_t__ V_dad_enhanced ;
 int arc4random () ;
 int nd6_ns_output (struct ifnet*,int *,int *,int *,int *) ;

__attribute__((used)) static void
nd6_dad_ns_output(struct dadq *dp)
{
 struct in6_ifaddr *ia = (struct in6_ifaddr *)dp->dad_ifa;
 struct ifnet *ifp = dp->dad_ifa->ifa_ifp;
 int i;

 dp->dad_ns_tcount++;
 if ((ifp->if_flags & IFF_UP) == 0) {
  return;
 }
 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0) {
  return;
 }

 dp->dad_ns_ocount++;
 if (V_dad_enhanced != 0) {
  for (i = 0; i < ND_OPT_NONCE_LEN32; i++)
   dp->dad_nonce[i] = arc4random();
 }
 nd6_ns_output(ifp, ((void*)0), ((void*)0), &ia->ia_addr.sin6_addr,
     (uint8_t *)&dp->dad_nonce[0]);
}
