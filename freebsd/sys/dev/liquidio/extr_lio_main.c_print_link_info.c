
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ duplex; int speed; scalar_t__ link_up; } ;
struct TYPE_3__ {TYPE_2__ s; } ;
struct octeon_link_info {TYPE_1__ link; } ;
struct lio {int oct_dev; struct octeon_link_info linfo; } ;
struct ifnet {int dummy; } ;


 int LIO_IFSTATE_REGISTERED ;
 int LIO_IFSTATE_RESETTING ;
 struct lio* if_getsoftc (struct ifnet*) ;
 int lio_dev_info (int ,char*,...) ;
 scalar_t__ lio_ifstate_check (struct lio*,int ) ;

__attribute__((used)) static void
print_link_info(struct ifnet *ifp)
{
 struct lio *lio = if_getsoftc(ifp);

 if (!lio_ifstate_check(lio, LIO_IFSTATE_RESETTING) &&
     lio_ifstate_check(lio, LIO_IFSTATE_REGISTERED)) {
  struct octeon_link_info *linfo = &lio->linfo;

  if (linfo->link.s.link_up) {
   lio_dev_info(lio->oct_dev, "%d Mbps %s Duplex UP\n",
         linfo->link.s.speed,
         (linfo->link.s.duplex) ? "Full" : "Half");
  } else {
   lio_dev_info(lio->oct_dev, "Link Down\n");
  }
 }
}
