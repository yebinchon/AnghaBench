
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ifa_ifp; } ;
struct in_ifaddr {int ia_garp_count; TYPE_1__ ia_ifa; int ia_garp_timer; } ;
struct ifaddr {int dummy; } ;


 int IF_ADDR_WLOCK (int ) ;
 int IF_ADDR_WUNLOCK (int ) ;
 scalar_t__ callout_reset (int *,int,int ,struct in_ifaddr*) ;
 int garp_rexmit ;
 int hz ;
 int ifa_ref (struct ifaddr*) ;

__attribute__((used)) static void
garp_timer_start(struct ifaddr *ifa)
{
 struct in_ifaddr *ia = (struct in_ifaddr *) ifa;

 IF_ADDR_WLOCK(ia->ia_ifa.ifa_ifp);
 ia->ia_garp_count = 0;
 if (callout_reset(&ia->ia_garp_timer, (1 << ia->ia_garp_count) * hz,
     garp_rexmit, ia) == 0) {
  ifa_ref(ifa);
 }
 IF_ADDR_WUNLOCK(ia->ia_ifa.ifa_ifp);
}
