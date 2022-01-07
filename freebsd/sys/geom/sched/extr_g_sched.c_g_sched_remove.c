
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_gsched {int dummy; } ;
struct g_geom {int dummy; } ;


 int g_sched_lock (struct g_geom*) ;
 int g_sched_remove_locked (struct g_geom*,struct g_gsched*) ;
 int g_sched_unlock (struct g_geom*) ;

__attribute__((used)) static int
g_sched_remove(struct g_geom *gp, struct g_gsched *gsp)
{
 int error;

 g_sched_lock(gp);
 error = g_sched_remove_locked(gp, gsp);
 g_sched_unlock(gp);

 return (error);
}
