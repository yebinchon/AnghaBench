
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int bv_hd; } ;
struct TYPE_3__ {int bv_hd; } ;
struct bufobj {int bo_domain; TYPE_2__ bo_dirty; TYPE_1__ bo_clean; void* bo_private; } ;


 int BO_LOCKPTR (struct bufobj*) ;
 int TAILQ_INIT (int *) ;
 int atomic_fetchadd_int (int volatile*,int) ;
 int buf_domains ;
 int rw_init (int ,char*) ;

void
bufobj_init(struct bufobj *bo, void *private)
{
 static volatile int bufobj_cleanq;

        bo->bo_domain =
            atomic_fetchadd_int(&bufobj_cleanq, 1) % buf_domains;
        rw_init(BO_LOCKPTR(bo), "bufobj interlock");
        bo->bo_private = private;
        TAILQ_INIT(&bo->bo_clean.bv_hd);
        TAILQ_INIT(&bo->bo_dirty.bv_hd);
}
