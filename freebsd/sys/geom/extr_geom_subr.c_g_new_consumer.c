
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_geom {int flags; int consumer; TYPE_1__* class; int name; int * orphan; } ;
struct g_consumer {int stat; struct g_geom* geom; } ;
struct TYPE_2__ {int name; } ;


 int DEVSTAT_ALL_SUPPORTED ;
 int DEVSTAT_PRIORITY_MAX ;
 int DEVSTAT_TYPE_DIRECT ;
 int G_GEOM_WITHER ;
 int G_VALID_GEOM (struct g_geom*) ;
 int KASSERT (int,char*) ;
 int LIST_INSERT_HEAD (int *,struct g_consumer*,int ) ;
 int M_WAITOK ;
 int M_ZERO ;
 int consumer ;
 int devstat_new_entry (struct g_consumer*,int,int ,int ,int ,int ) ;
 struct g_consumer* g_malloc (int,int) ;
 int g_topology_assert () ;

struct g_consumer *
g_new_consumer(struct g_geom *gp)
{
 struct g_consumer *cp;

 g_topology_assert();
 G_VALID_GEOM(gp);
 KASSERT(!(gp->flags & G_GEOM_WITHER),
     ("g_new_consumer on WITHERing geom(%s) (class %s)",
     gp->name, gp->class->name));
 KASSERT(gp->orphan != ((void*)0),
     ("g_new_consumer on geom(%s) (class %s) without orphan",
     gp->name, gp->class->name));

 cp = g_malloc(sizeof *cp, M_WAITOK | M_ZERO);
 cp->geom = gp;
 cp->stat = devstat_new_entry(cp, -1, 0, DEVSTAT_ALL_SUPPORTED,
     DEVSTAT_TYPE_DIRECT, DEVSTAT_PRIORITY_MAX);
 LIST_INSERT_HEAD(&gp->consumer, cp, consumer);
 return(cp);
}
