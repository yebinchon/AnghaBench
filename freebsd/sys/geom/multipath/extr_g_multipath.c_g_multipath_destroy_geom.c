
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;
struct g_geom {int dummy; } ;
struct g_class {int dummy; } ;


 int g_multipath_destroy (struct g_geom*) ;

__attribute__((used)) static int
g_multipath_destroy_geom(struct gctl_req *req, struct g_class *mp,
    struct g_geom *gp)
{

 return (g_multipath_destroy(gp));
}
