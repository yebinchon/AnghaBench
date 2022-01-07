
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_provider {int flags; scalar_t__ mediasize; } ;
struct g_hh00 {scalar_t__ size; struct g_provider* pp; } ;
typedef scalar_t__ off_t ;


 int G_PF_WITHER ;
 int G_VALID_PROVIDER (struct g_provider*) ;
 int M_WAITOK ;
 int M_ZERO ;
 struct g_hh00* g_malloc (int,int) ;
 int g_post_event (int ,struct g_hh00*,int,int *) ;
 int g_resize_provider_event ;

void
g_resize_provider(struct g_provider *pp, off_t size)
{
 struct g_hh00 *hh;

 G_VALID_PROVIDER(pp);
 if (pp->flags & G_PF_WITHER)
  return;

 if (size == pp->mediasize)
  return;

 hh = g_malloc(sizeof *hh, M_WAITOK | M_ZERO);
 hh->pp = pp;
 hh->size = size;
 g_post_event(g_resize_provider_event, hh, M_WAITOK, ((void*)0));
}
