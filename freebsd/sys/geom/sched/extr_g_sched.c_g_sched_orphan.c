
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_consumer {int geom; } ;


 int g_sched_destroy (int ,int) ;
 int g_topology_assert () ;

__attribute__((used)) static void
g_sched_orphan(struct g_consumer *cp)
{

 g_topology_assert();
 g_sched_destroy(cp->geom, 1);
}
