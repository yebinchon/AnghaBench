
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_volume {int dummy; } ;


 int M_NOWAIT ;
 int bzero (struct gv_volume*,int) ;
 struct gv_volume* g_malloc (int,int ) ;
 struct gv_volume* malloc (int) ;

struct gv_volume *
gv_alloc_volume(void)
{
 struct gv_volume *v;




 v = malloc(sizeof(struct gv_volume));

 if (v == ((void*)0))
  return (((void*)0));
 bzero(v, sizeof(struct gv_volume));
 return (v);
}
