
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_provider {struct g_geom* geom; } ;
struct g_geom {int dummy; } ;


 int g_reparent_provider (struct g_provider*,struct g_geom*,struct g_provider*) ;

__attribute__((used)) static inline void
g_unproxy_provider(struct g_provider *oldpp, struct g_provider *newpp)
{
 struct g_geom *gp = oldpp->geom;

 g_reparent_provider(oldpp, newpp->geom, newpp);






 g_reparent_provider(newpp, gp, ((void*)0));
}
