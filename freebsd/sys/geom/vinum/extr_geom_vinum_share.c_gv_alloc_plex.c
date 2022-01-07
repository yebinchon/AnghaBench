
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_plex {int dummy; } ;


 int M_NOWAIT ;
 int bzero (struct gv_plex*,int) ;
 struct gv_plex* g_malloc (int,int ) ;
 struct gv_plex* malloc (int) ;

struct gv_plex *
gv_alloc_plex(void)
{
 struct gv_plex *p;




 p = malloc(sizeof(struct gv_plex));

 if (p == ((void*)0))
  return (((void*)0));
 bzero(p, sizeof(struct gv_plex));
 return (p);
}
