
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_provider {int dummy; } ;
struct g_geom {int provider; } ;
struct disk {struct g_geom* d_geom; } ;


 int KASSERT (int ,char*) ;
 struct g_provider* LIST_FIRST (int *) ;
 int * LIST_NEXT (struct g_provider*,int ) ;
 int g_media_changed (struct g_provider*,int) ;
 int provider ;

void
disk_media_changed(struct disk *dp, int flag)
{
 struct g_geom *gp;
 struct g_provider *pp;

 gp = dp->d_geom;
 if (gp != ((void*)0)) {
  pp = LIST_FIRST(&gp->provider);
  if (pp != ((void*)0)) {
   KASSERT(LIST_NEXT(pp, provider) == ((void*)0),
       ("geom %p has more than one provider", gp));
   g_media_changed(pp, flag);
  }
 }
}
