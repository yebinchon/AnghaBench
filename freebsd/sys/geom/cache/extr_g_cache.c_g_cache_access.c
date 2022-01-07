
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_provider {struct g_geom* geom; } ;
struct g_geom {int consumer; } ;
struct g_consumer {int dummy; } ;


 struct g_consumer* LIST_FIRST (int *) ;
 int g_access (struct g_consumer*,int,int,int) ;

__attribute__((used)) static int
g_cache_access(struct g_provider *pp, int dr, int dw, int de)
{
 struct g_geom *gp;
 struct g_consumer *cp;
 int error;

 gp = pp->geom;
 cp = LIST_FIRST(&gp->consumer);
 error = g_access(cp, dr, dw, de);

 return (error);
}
