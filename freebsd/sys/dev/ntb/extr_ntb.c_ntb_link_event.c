
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rm_priotracker {int dummy; } ;
struct ntb_child {int ctx_lock; int ctx; TYPE_1__* ctx_ops; struct ntb_child* next; } ;
typedef enum ntb_width { ____Placeholder_ntb_width } ntb_width ;
typedef enum ntb_speed { ____Placeholder_ntb_speed } ntb_speed ;
typedef int device_t ;
struct TYPE_2__ {int (* link_event ) (int ) ;} ;


 scalar_t__ NTB_LINK_IS_UP (int ,int*,int*) ;
 struct ntb_child** device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int rm_rlock (int *,struct rm_priotracker*) ;
 int rm_runlock (int *,struct rm_priotracker*) ;
 int stub1 (int ) ;

void
ntb_link_event(device_t dev)
{
 struct ntb_child **cpp = device_get_softc(dev);
 struct ntb_child *nc;
 struct rm_priotracker ctx_tracker;
 enum ntb_speed speed;
 enum ntb_width width;

 if (NTB_LINK_IS_UP(dev, &speed, &width)) {
  device_printf(dev, "Link is up (PCIe %d.x / x%d)\n",
      (int)speed, (int)width);
 } else {
  device_printf(dev, "Link is down\n");
 }
 for (nc = *cpp; nc != ((void*)0); nc = nc->next) {
  rm_rlock(&nc->ctx_lock, &ctx_tracker);
  if (nc->ctx_ops != ((void*)0) && nc->ctx_ops->link_event != ((void*)0))
   nc->ctx_ops->link_event(nc->ctx);
  rm_runlock(&nc->ctx_lock, &ctx_tracker);
 }
}
