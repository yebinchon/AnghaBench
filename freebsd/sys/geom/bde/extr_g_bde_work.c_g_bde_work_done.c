
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_bde_work {int * ksp; int * sp; int softc; int length; int bp; } ;


 int g_bde_contribute (int ,int ,int) ;
 int g_bde_delete_sector (int ,int *) ;
 int g_bde_delete_work (struct g_bde_work*) ;
 int g_bde_release_keysector (struct g_bde_work*) ;

__attribute__((used)) static void
g_bde_work_done(struct g_bde_work *wp, int error)
{

 g_bde_contribute(wp->bp, wp->length, error);
 if (wp->sp != ((void*)0))
  g_bde_delete_sector(wp->softc, wp->sp);
 if (wp->ksp != ((void*)0))
  g_bde_release_keysector(wp);
 g_bde_delete_work(wp);
}
