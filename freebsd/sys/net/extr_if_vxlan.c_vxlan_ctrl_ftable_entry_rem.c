
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_softc {int dummy; } ;
struct vxlan_ftable_entry {int dummy; } ;
struct ifvxlancmd {int vxlcmd_mac; } ;


 int ENOENT ;
 int VXLAN_WLOCK (struct vxlan_softc*) ;
 int VXLAN_WUNLOCK (struct vxlan_softc*) ;
 int vxlan_ftable_entry_destroy (struct vxlan_softc*,struct vxlan_ftable_entry*) ;
 struct vxlan_ftable_entry* vxlan_ftable_entry_lookup (struct vxlan_softc*,int ) ;

__attribute__((used)) static int
vxlan_ctrl_ftable_entry_rem(struct vxlan_softc *sc, void *arg)
{
 struct ifvxlancmd *cmd;
 struct vxlan_ftable_entry *fe;
 int error;

 cmd = arg;

 VXLAN_WLOCK(sc);
 fe = vxlan_ftable_entry_lookup(sc, cmd->vxlcmd_mac);
 if (fe != ((void*)0)) {
  vxlan_ftable_entry_destroy(sc, fe);
  error = 0;
 } else
  error = ENOENT;
 VXLAN_WUNLOCK(sc);

 return (error);
}
