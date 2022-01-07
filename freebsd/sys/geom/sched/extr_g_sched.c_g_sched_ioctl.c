
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct thread {int dummy; } ;
struct g_provider {TYPE_1__* geom; } ;
struct g_geom {int (* ioctl ) (TYPE_2__*,int ,void*,int,struct thread*) ;} ;
struct g_consumer {TYPE_2__* provider; } ;
struct TYPE_4__ {struct g_geom* geom; } ;
struct TYPE_3__ {int consumer; } ;


 int ENOIOCTL ;
 struct g_consumer* LIST_FIRST (int *) ;
 int stub1 (TYPE_2__*,int ,void*,int,struct thread*) ;

__attribute__((used)) static int
g_sched_ioctl(struct g_provider *pp, u_long cmd, void *data, int fflag,
    struct thread *td)
{
 struct g_consumer *cp;
 struct g_geom *gp;

 cp = LIST_FIRST(&pp->geom->consumer);
 if (cp == ((void*)0))
  return (ENOIOCTL);
 gp = cp->provider->geom;
 if (gp->ioctl == ((void*)0))
  return (ENOIOCTL);
 return (gp->ioctl(cp->provider, cmd, data, fflag, td));
}
