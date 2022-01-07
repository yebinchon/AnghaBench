
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_consumer {TYPE_1__* geom; } ;
struct TYPE_2__ {int softc; } ;


 int g_cache_destroy (int ,int) ;
 int g_topology_assert () ;

__attribute__((used)) static void
g_cache_orphan(struct g_consumer *cp)
{

 g_topology_assert();
 g_cache_destroy(cp->geom->softc, 1);
}
