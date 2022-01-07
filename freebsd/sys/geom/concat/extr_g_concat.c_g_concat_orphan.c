
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_geom {struct g_concat_softc* softc; } ;
struct g_consumer {struct g_concat_disk* private; struct g_geom* geom; } ;
struct g_concat_softc {int dummy; } ;
struct g_concat_disk {int dummy; } ;


 int g_concat_remove_disk (struct g_concat_disk*) ;
 int g_topology_assert () ;

__attribute__((used)) static void
g_concat_orphan(struct g_consumer *cp)
{
 struct g_concat_softc *sc;
 struct g_concat_disk *disk;
 struct g_geom *gp;

 g_topology_assert();
 gp = cp->geom;
 sc = gp->softc;
 if (sc == ((void*)0))
  return;

 disk = cp->private;
 if (disk == ((void*)0))
  return;
 g_concat_remove_disk(disk);
}
