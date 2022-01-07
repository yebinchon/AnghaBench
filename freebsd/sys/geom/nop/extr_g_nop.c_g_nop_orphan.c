
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_consumer {int geom; } ;


 int g_nop_destroy (int ,int) ;
 int g_topology_assert () ;

__attribute__((used)) static void
g_nop_orphan(struct g_consumer *cp)
{

 g_topology_assert();
 g_nop_destroy(cp->geom, 1);
}
