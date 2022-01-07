
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_provider {scalar_t__ acw; scalar_t__ error; TYPE_1__* geom; } ;
struct TYPE_2__ {int flags; } ;


 int EV_CANCEL ;
 int G_GEOM_WITHER ;
 int G_VALID_PROVIDER (struct g_provider*) ;
 int M_WAITOK ;
 int g_new_provider_event ;
 int g_post_event (int ,struct g_provider*,int ,struct g_provider*,int *) ;
 int g_spoil_event (void*,int) ;
 int g_topology_assert () ;

__attribute__((used)) static void
g_media_changed_event(void *arg, int flag)
{
 struct g_provider *pp;
 int retaste;

 g_topology_assert();
 if (flag == EV_CANCEL)
  return;
 pp = arg;
 G_VALID_PROVIDER(pp);





 retaste = (pp->acw == 0 && pp->error == 0 &&
     !(pp->geom->flags & G_GEOM_WITHER));
 g_spoil_event(arg, flag);
 if (retaste)
  g_post_event(g_new_provider_event, pp, M_WAITOK, pp, ((void*)0));
}
