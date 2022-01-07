
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct bridge_softc {int sc_brtcnt; int sc_rtlist; int * sc_rthash; } ;
struct bridge_rtnode {scalar_t__ brt_vlan; int brt_addr; } ;


 int BRIDGE_LOCK_ASSERT (struct bridge_softc*) ;
 int EEXIST ;
 struct bridge_rtnode* LIST_FIRST (int *) ;
 int LIST_INSERT_AFTER (struct bridge_rtnode*,struct bridge_rtnode*,int ) ;
 int LIST_INSERT_BEFORE (struct bridge_rtnode*,struct bridge_rtnode*,int ) ;
 int LIST_INSERT_HEAD (int *,struct bridge_rtnode*,int ) ;
 struct bridge_rtnode* LIST_NEXT (struct bridge_rtnode*,int ) ;
 size_t bridge_rthash (struct bridge_softc*,int ) ;
 int bridge_rtnode_addr_cmp (int ,int ) ;
 int brt_hash ;
 int brt_list ;
 int panic (char*) ;

__attribute__((used)) static int
bridge_rtnode_insert(struct bridge_softc *sc, struct bridge_rtnode *brt)
{
 struct bridge_rtnode *lbrt;
 uint32_t hash;
 int dir;

 BRIDGE_LOCK_ASSERT(sc);

 hash = bridge_rthash(sc, brt->brt_addr);

 lbrt = LIST_FIRST(&sc->sc_rthash[hash]);
 if (lbrt == ((void*)0)) {
  LIST_INSERT_HEAD(&sc->sc_rthash[hash], brt, brt_hash);
  goto out;
 }

 do {
  dir = bridge_rtnode_addr_cmp(brt->brt_addr, lbrt->brt_addr);
  if (dir == 0 && brt->brt_vlan == lbrt->brt_vlan)
   return (EEXIST);
  if (dir > 0) {
   LIST_INSERT_BEFORE(lbrt, brt, brt_hash);
   goto out;
  }
  if (LIST_NEXT(lbrt, brt_hash) == ((void*)0)) {
   LIST_INSERT_AFTER(lbrt, brt, brt_hash);
   goto out;
  }
  lbrt = LIST_NEXT(lbrt, brt_hash);
 } while (lbrt != ((void*)0));





out:
 LIST_INSERT_HEAD(&sc->sc_rtlist, brt, brt_list);
 sc->sc_brtcnt++;

 return (0);
}
