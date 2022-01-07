
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bio {int dummy; } ;
struct TYPE_2__ {int gs_mtx; int gs_pending; int gs_npending; } ;


 int bioq_disksort (int *,struct bio*) ;
 TYPE_1__ me ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
g_sched_temporary_start(struct bio *bio)
{

 mtx_lock(&me.gs_mtx);
 me.gs_npending++;
 bioq_disksort(&me.gs_pending, bio);
 mtx_unlock(&me.gs_mtx);
}
