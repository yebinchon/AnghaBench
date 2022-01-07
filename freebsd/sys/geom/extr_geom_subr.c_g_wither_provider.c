
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_provider {int flags; } ;


 int G_PF_ORPHAN ;
 int G_PF_WITHER ;
 int g_orphan_provider (struct g_provider*,int) ;

void
g_wither_provider(struct g_provider *pp, int error)
{

 pp->flags |= G_PF_WITHER;
 if (!(pp->flags & G_PF_ORPHAN))
  g_orphan_provider(pp, error);
}
