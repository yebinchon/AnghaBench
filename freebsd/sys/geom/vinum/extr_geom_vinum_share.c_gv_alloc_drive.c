
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_drive {int dummy; } ;


 int M_NOWAIT ;
 int bzero (struct gv_drive*,int) ;
 struct gv_drive* g_malloc (int,int ) ;
 struct gv_drive* malloc (int) ;

struct gv_drive *
gv_alloc_drive(void)
{
 struct gv_drive *d;




 d = malloc(sizeof(struct gv_drive));

 if (d == ((void*)0))
  return (((void*)0));
 bzero(d, sizeof(struct gv_drive));
 return (d);
}
