
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int w ;
struct TYPE_7__ {int dev; } ;
struct sbp_softc {TYPE_4__* targets; TYPE_2__ fd; } ;
struct TYPE_8__ {scalar_t__ lo; int hi; } ;
struct fw_device {TYPE_3__ eui; } ;
struct TYPE_6__ {scalar_t__ lo; int hi; } ;
struct TYPE_10__ {int bus; size_t target; TYPE_1__ eui; } ;
struct TYPE_9__ {int * fwdev; } ;


 int SBP_NUM_TARGETS ;
 int bzero (char*,int) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,int,int ,scalar_t__) ;
 TYPE_5__* wired ;

__attribute__((used)) static int
sbp_new_target(struct sbp_softc *sbp, struct fw_device *fwdev)
{
 int bus, i, target=-1;
 char w[SBP_NUM_TARGETS];

 bzero(w, sizeof(w));
 bus = device_get_unit(sbp->fd.dev);



 for (i = 0; wired[i].bus >= 0; i++) {
  if (wired[i].bus == bus) {
   w[wired[i].target] = 1;
   if (wired[i].eui.hi == fwdev->eui.hi &&
     wired[i].eui.lo == fwdev->eui.lo)
    target = wired[i].target;
  }
 }
 if (target >= 0) {
  if (target < SBP_NUM_TARGETS &&
    sbp->targets[target].fwdev == ((void*)0))
   return (target);
  device_printf(sbp->fd.dev,
   "target %d is not free for %08x:%08x\n",
   target, fwdev->eui.hi, fwdev->eui.lo);
  target = -1;
 }

 for (i = 0; i < SBP_NUM_TARGETS; i++)
  if (sbp->targets[i].fwdev == ((void*)0) && w[i] == 0) {
   target = i;
   break;
  }

 return target;
}
