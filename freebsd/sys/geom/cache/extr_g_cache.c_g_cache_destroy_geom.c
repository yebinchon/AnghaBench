
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;
struct g_geom {int softc; } ;
struct g_class {int dummy; } ;


 int g_cache_destroy (int ,int ) ;

__attribute__((used)) static int
g_cache_destroy_geom(struct gctl_req *req, struct g_class *mp, struct g_geom *gp)
{

 return (g_cache_destroy(gp->softc, 0));
}
