
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_softc {int vxl_flags; } ;
struct ifvxlancmd {int vxlcmd_flags; } ;


 int VXLAN_CMD_FLAG_LEARN ;
 int VXLAN_FLAG_LEARN ;
 int VXLAN_WLOCK (struct vxlan_softc*) ;
 int VXLAN_WUNLOCK (struct vxlan_softc*) ;

__attribute__((used)) static int
vxlan_ctrl_set_learn(struct vxlan_softc *sc, void *arg)
{
 struct ifvxlancmd *cmd;

 cmd = arg;

 VXLAN_WLOCK(sc);
 if (cmd->vxlcmd_flags & VXLAN_CMD_FLAG_LEARN)
  sc->vxl_flags |= VXLAN_FLAG_LEARN;
 else
  sc->vxl_flags &= ~VXLAN_FLAG_LEARN;
 VXLAN_WUNLOCK(sc);

 return (0);
}
