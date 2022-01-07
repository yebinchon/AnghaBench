
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct vxlan_softc {int vxl_ftable_cnt; int * vxl_ftable; } ;
struct vxlan_ftable_entry {int vxlfe_mac; } ;


 int EEXIST ;
 struct vxlan_ftable_entry* LIST_FIRST (int *) ;
 int LIST_INSERT_AFTER (struct vxlan_ftable_entry*,struct vxlan_ftable_entry*,int ) ;
 int LIST_INSERT_BEFORE (struct vxlan_ftable_entry*,struct vxlan_ftable_entry*,int ) ;
 int LIST_INSERT_HEAD (int *,struct vxlan_ftable_entry*,int ) ;
 struct vxlan_ftable_entry* LIST_NEXT (struct vxlan_ftable_entry*,int ) ;
 int VXLAN_LOCK_WASSERT (struct vxlan_softc*) ;
 size_t VXLAN_SC_FTABLE_HASH (struct vxlan_softc*,int ) ;
 int vxlan_ftable_addr_cmp (int ,int ) ;
 int vxlfe_hash ;

__attribute__((used)) static int
vxlan_ftable_entry_insert(struct vxlan_softc *sc,
    struct vxlan_ftable_entry *fe)
{
 struct vxlan_ftable_entry *lfe;
 uint32_t hash;
 int dir;

 VXLAN_LOCK_WASSERT(sc);
 hash = VXLAN_SC_FTABLE_HASH(sc, fe->vxlfe_mac);

 lfe = LIST_FIRST(&sc->vxl_ftable[hash]);
 if (lfe == ((void*)0)) {
  LIST_INSERT_HEAD(&sc->vxl_ftable[hash], fe, vxlfe_hash);
  goto out;
 }

 do {
  dir = vxlan_ftable_addr_cmp(fe->vxlfe_mac, lfe->vxlfe_mac);
  if (dir == 0)
   return (EEXIST);
  if (dir > 0) {
   LIST_INSERT_BEFORE(lfe, fe, vxlfe_hash);
   goto out;
  } else if (LIST_NEXT(lfe, vxlfe_hash) == ((void*)0)) {
   LIST_INSERT_AFTER(lfe, fe, vxlfe_hash);
   goto out;
  } else
   lfe = LIST_NEXT(lfe, vxlfe_hash);
 } while (lfe != ((void*)0));

out:
 sc->vxl_ftable_cnt++;

 return (0);
}
