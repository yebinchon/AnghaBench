
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct g_bde_work {int so; TYPE_1__* softc; } ;
struct g_bde_sector {int malloc; int size; int ref; int state; int offset; struct g_bde_work* owner; TYPE_1__* softc; int * data; } ;
struct TYPE_2__ {int nsect; } ;


 int JUNK ;
 int M_GBDE ;
 int M_NOWAIT ;
 int M_ZERO ;
 int free (struct g_bde_sector*,int ) ;
 int g_bde_nsect ;
 void* malloc (int,int ,int) ;

__attribute__((used)) static struct g_bde_sector *
g_bde_new_sector(struct g_bde_work *wp, u_int len)
{
 struct g_bde_sector *sp;

 sp = malloc(sizeof *sp, M_GBDE, M_NOWAIT | M_ZERO);
 if (sp == ((void*)0))
  return (sp);
 if (len > 0) {
  sp->data = malloc(len, M_GBDE, M_NOWAIT | M_ZERO);
  if (sp->data == ((void*)0)) {
   free(sp, M_GBDE);
   return (((void*)0));
  }
  sp->malloc = 1;
 }
 g_bde_nsect++;
 wp->softc->nsect++;
 sp->size = len;
 sp->softc = wp->softc;
 sp->ref = 1;
 sp->owner = wp;
 sp->offset = wp->so;
 sp->state = JUNK;
 return (sp);
}
