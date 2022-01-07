
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct g_bde_work {int state; TYPE_1__* bp; int * ksp; TYPE_2__* sp; int length; int error; int data; struct g_bde_softc* softc; } ;
struct g_bde_softc {int dummy; } ;
struct TYPE_4__ {int data; int size; } ;
struct TYPE_3__ {int bio_cmd; } ;





 int ENOMEM ;
 int G_T_TOPOLOGY ;
 int KASSERT (int,char*) ;
 int WAIT ;
 void* g_bde_new_sector (struct g_bde_work*,int ) ;
 int g_bde_read_keysector (struct g_bde_softc*,struct g_bde_work*) ;
 int g_bde_start_read (TYPE_2__*) ;
 int g_bde_work_done (struct g_bde_work*,int ) ;
 int g_trace (int ,char*,struct g_bde_work*) ;
 int wakeup (struct g_bde_softc*) ;

__attribute__((used)) static void
g_bde_start2(struct g_bde_work *wp)
{
 struct g_bde_softc *sc;

 KASSERT(wp != ((void*)0), ("NULL wp in g_bde_start2"));
 KASSERT(wp->softc != ((void*)0), ("NULL wp->softc"));
 g_trace(G_T_TOPOLOGY, "g_bde_start2(%p)", wp);
 sc = wp->softc;
 switch (wp->bp->bio_cmd) {
 case 129:
  wp->sp = g_bde_new_sector(wp, 0);
  if (wp->sp == ((void*)0)) {
   g_bde_work_done(wp, ENOMEM);
   return;
  }
  wp->sp->size = wp->length;
  wp->sp->data = wp->data;
  if (g_bde_start_read(wp->sp) != 0) {
   g_bde_work_done(wp, ENOMEM);
   return;
  }
  g_bde_read_keysector(sc, wp);
  if (wp->ksp == ((void*)0))
   wp->error = ENOMEM;
  break;
 case 130:
  wp->sp = g_bde_new_sector(wp, wp->length);
  if (wp->sp == ((void*)0)) {
   g_bde_work_done(wp, ENOMEM);
   return;
  }
  break;
 case 128:
  wp->sp = g_bde_new_sector(wp, wp->length);
  if (wp->sp == ((void*)0)) {
   g_bde_work_done(wp, ENOMEM);
   return;
  }
  g_bde_read_keysector(sc, wp);
  if (wp->ksp == ((void*)0)) {
   g_bde_work_done(wp, ENOMEM);
   return;
  }
  break;
 default:
  KASSERT(0 == 1,
      ("Wrong bio_cmd %d in g_bde_start2", wp->bp->bio_cmd));
 }

 wp->state = WAIT;
 wakeup(sc);
}
