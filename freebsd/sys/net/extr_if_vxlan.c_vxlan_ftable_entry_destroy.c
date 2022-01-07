
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_softc {int vxl_ftable_cnt; } ;
struct vxlan_ftable_entry {int dummy; } ;


 int LIST_REMOVE (struct vxlan_ftable_entry*,int ) ;
 int vxlan_ftable_entry_free (struct vxlan_ftable_entry*) ;
 int vxlfe_hash ;

__attribute__((used)) static void
vxlan_ftable_entry_destroy(struct vxlan_softc *sc,
    struct vxlan_ftable_entry *fe)
{

 sc->vxl_ftable_cnt--;
 LIST_REMOVE(fe, vxlfe_hash);
 vxlan_ftable_entry_free(fe);
}
