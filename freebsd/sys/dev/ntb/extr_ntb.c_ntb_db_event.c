
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct rm_priotracker {int dummy; } ;
struct ntb_child {int ctx_lock; int ctx; TYPE_1__* ctx_ops; struct ntb_child* next; } ;
typedef int device_t ;
struct TYPE_2__ {int (* db_event ) (int ,int ) ;} ;


 struct ntb_child** device_get_softc (int ) ;
 int rm_rlock (int *,struct rm_priotracker*) ;
 int rm_runlock (int *,struct rm_priotracker*) ;
 int stub1 (int ,int ) ;

void
ntb_db_event(device_t dev, uint32_t vec)
{
 struct ntb_child **cpp = device_get_softc(dev);
 struct ntb_child *nc;
 struct rm_priotracker ctx_tracker;

 for (nc = *cpp; nc != ((void*)0); nc = nc->next) {
  rm_rlock(&nc->ctx_lock, &ctx_tracker);
  if (nc->ctx_ops != ((void*)0) && nc->ctx_ops->db_event != ((void*)0))
   nc->ctx_ops->db_event(nc->ctx, vec);
  rm_runlock(&nc->ctx_lock, &ctx_tracker);
 }
}
