
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct cbb_softc {int rl; } ;
struct cbb_reslist {int type; int rid; struct resource* res; } ;


 int M_DEVBUF ;
 int M_NOWAIT ;
 int SLIST_INSERT_HEAD (int *,struct cbb_reslist*,int ) ;
 int link ;
 struct cbb_reslist* malloc (int,int ,int ) ;
 int panic (char*) ;

__attribute__((used)) static void
cbb_insert_res(struct cbb_softc *sc, struct resource *res, int type,
    int rid)
{
 struct cbb_reslist *rle;





 rle = malloc(sizeof(struct cbb_reslist), M_DEVBUF, M_NOWAIT);
 if (rle == ((void*)0))
  panic("cbb_cardbus_alloc_resource: can't record entry!");
 rle->res = res;
 rle->type = type;
 rle->rid = rid;
 SLIST_INSERT_HEAD(&sc->rl, rle, link);
}
