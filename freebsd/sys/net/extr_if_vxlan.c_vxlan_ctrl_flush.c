
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_softc {int dummy; } ;
struct ifvxlancmd {int vxlcmd_flags; } ;


 int VXLAN_CMD_FLAG_FLUSH_ALL ;
 int VXLAN_WLOCK (struct vxlan_softc*) ;
 int VXLAN_WUNLOCK (struct vxlan_softc*) ;
 int vxlan_ftable_flush (struct vxlan_softc*,int) ;

__attribute__((used)) static int
vxlan_ctrl_flush(struct vxlan_softc *sc, void *arg)
{
 struct ifvxlancmd *cmd;
 int all;

 cmd = arg;
 all = cmd->vxlcmd_flags & VXLAN_CMD_FLAG_FLUSH_ALL;

 VXLAN_WLOCK(sc);
 vxlan_ftable_flush(sc, all);
 VXLAN_WUNLOCK(sc);

 return (0);
}
