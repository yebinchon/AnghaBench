
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_provider {int dummy; } ;
struct g_geom {int provider; } ;
struct disk {int d_goneflag; scalar_t__ d_init_level; struct g_geom* d_geom; } ;


 scalar_t__ DISK_INIT_DONE ;
 int ENXIO ;
 int KASSERT (int ,char*) ;
 struct g_provider* LIST_FIRST (int *) ;
 int * LIST_NEXT (struct g_provider*,int ) ;
 int g_wither_provider (struct g_provider*,int ) ;
 int mtx_pool_lock (int ,struct disk*) ;
 int mtx_pool_unlock (int ,struct disk*) ;
 int mtxpool_sleep ;
 int provider ;

void
disk_gone(struct disk *dp)
{
 struct g_geom *gp;
 struct g_provider *pp;

 mtx_pool_lock(mtxpool_sleep, dp);
 dp->d_goneflag = 1;
 if (dp->d_init_level < DISK_INIT_DONE) {
  mtx_pool_unlock(mtxpool_sleep, dp);
  return;
 }
 mtx_pool_unlock(mtxpool_sleep, dp);

 gp = dp->d_geom;
 if (gp != ((void*)0)) {
  pp = LIST_FIRST(&gp->provider);
  if (pp != ((void*)0)) {
   KASSERT(LIST_NEXT(pp, provider) == ((void*)0),
       ("geom %p has more than one provider", gp));
   g_wither_provider(pp, ENXIO);
  }
 }
}
