
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpt_softc {int cfg_role; int role; TYPE_1__* ioc_page2; scalar_t__ do_cfg_role; } ;
struct TYPE_2__ {scalar_t__ MaxPhysDisks; } ;


 int ENODEV ;
 int MPT_ROLE_INITIATOR ;
 int MPT_ROLE_TARGET ;

__attribute__((used)) static int
mpt_cam_probe(struct mpt_softc *mpt)
{
 int role;






 if (mpt->do_cfg_role) {
  role = mpt->cfg_role;
 } else {
  role = mpt->role;
 }
 if ((role & (MPT_ROLE_TARGET|MPT_ROLE_INITIATOR)) != 0 ||
     (mpt->ioc_page2 != ((void*)0) && mpt->ioc_page2->MaxPhysDisks != 0)) {
  return (0);
 }
 return (ENODEV);
}
