
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_softc {int vxl_mc_ifname; } ;
struct ifvxlancmd {int vxlcmd_ifname; } ;


 int EBUSY ;
 int IFNAMSIZ ;
 int VXLAN_WLOCK (struct vxlan_softc*) ;
 int VXLAN_WUNLOCK (struct vxlan_softc*) ;
 int strlcpy (int ,int ,int ) ;
 scalar_t__ vxlan_can_change_config (struct vxlan_softc*) ;

__attribute__((used)) static int
vxlan_ctrl_set_multicast_if(struct vxlan_softc * sc, void *arg)
{
 struct ifvxlancmd *cmd;
 int error;

 cmd = arg;

 VXLAN_WLOCK(sc);
 if (vxlan_can_change_config(sc)) {
  strlcpy(sc->vxl_mc_ifname, cmd->vxlcmd_ifname, IFNAMSIZ);
  error = 0;
 } else
  error = EBUSY;
 VXLAN_WUNLOCK(sc);

 return (error);
}
