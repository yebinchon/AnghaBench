
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpt_softc {TYPE_1__* ioc_page2; } ;
struct TYPE_2__ {scalar_t__ MaxPhysDisks; } ;


 int ENODEV ;

__attribute__((used)) static int
mpt_raid_probe(struct mpt_softc *mpt)
{

 if (mpt->ioc_page2 == ((void*)0) || mpt->ioc_page2->MaxPhysDisks == 0) {
  return (ENODEV);
 }
 return (0);
}
