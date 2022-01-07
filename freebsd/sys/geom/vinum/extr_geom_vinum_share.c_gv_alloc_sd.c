
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_sd {int plex_offset; int size; int drive_offset; } ;


 int M_NOWAIT ;
 int bzero (struct gv_sd*,int) ;
 struct gv_sd* g_malloc (int,int ) ;
 struct gv_sd* malloc (int) ;

struct gv_sd *
gv_alloc_sd(void)
{
 struct gv_sd *s;




 s = malloc(sizeof(struct gv_sd));

 if (s == ((void*)0))
  return (((void*)0));
 bzero(s, sizeof(struct gv_sd));
 s->plex_offset = -1;
 s->size = -1;
 s->drive_offset = -1;
 return (s);
}
