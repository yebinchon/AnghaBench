
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_softc {int vxl_vni; } ;
struct ifvxlancmd {int vxlcmd_vni; } ;


 int EBUSY ;
 int EINVAL ;
 int VXLAN_WLOCK (struct vxlan_softc*) ;
 int VXLAN_WUNLOCK (struct vxlan_softc*) ;
 scalar_t__ vxlan_can_change_config (struct vxlan_softc*) ;
 scalar_t__ vxlan_check_vni (int ) ;

__attribute__((used)) static int
vxlan_ctrl_set_vni(struct vxlan_softc *sc, void *arg)
{
 struct ifvxlancmd *cmd;
 int error;

 cmd = arg;

 if (vxlan_check_vni(cmd->vxlcmd_vni) != 0)
  return (EINVAL);

 VXLAN_WLOCK(sc);
 if (vxlan_can_change_config(sc)) {
  sc->vxl_vni = cmd->vxlcmd_vni;
  error = 0;
 } else
  error = EBUSY;
 VXLAN_WUNLOCK(sc);

 return (error);
}
