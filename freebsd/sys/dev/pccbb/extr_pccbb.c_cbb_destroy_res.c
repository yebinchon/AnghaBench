
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cbb_softc {int rl; int dev; } ;
struct cbb_reslist {int res; int type; int rid; } ;


 int M_DEVBUF ;
 struct cbb_reslist* SLIST_FIRST (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int device_printf (int ,char*,int ,int ,int ) ;
 int free (struct cbb_reslist*,int ) ;
 int link ;
 int rman_get_start (int ) ;

__attribute__((used)) static void
cbb_destroy_res(struct cbb_softc *sc)
{
 struct cbb_reslist *rle;

 while ((rle = SLIST_FIRST(&sc->rl)) != ((void*)0)) {
  device_printf(sc->dev, "Danger Will Robinson: Resource "
      "left allocated!  This is a bug... "
      "(rid=%x, type=%d, addr=%jx)\n", rle->rid, rle->type,
      rman_get_start(rle->res));
  SLIST_REMOVE_HEAD(&sc->rl, link);
  free(rle, M_DEVBUF);
 }
}
