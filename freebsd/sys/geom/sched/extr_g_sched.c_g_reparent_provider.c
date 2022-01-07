
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_provider {struct g_geom* geom; int index; int private; } ;
struct g_geom {int provider; } ;


 int LIST_INSERT_HEAD (int *,struct g_provider*,int ) ;
 int LIST_REMOVE (struct g_provider*,int ) ;
 int provider ;

__attribute__((used)) static inline void
g_reparent_provider(struct g_provider *pp, struct g_geom *gp,
    struct g_provider *newpp)
{

 LIST_REMOVE(pp, provider);
 if (newpp) {
  pp->private = newpp->private;
  pp->index = newpp->index;
 }
 pp->geom = gp;
 LIST_INSERT_HEAD(&gp->provider, pp, provider);
}
