
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_softc {int vxl_ftable_timeout; } ;
struct ifvxlancmd {int vxlcmd_ftable_timeout; } ;


 int EINVAL ;
 int VXLAN_WLOCK (struct vxlan_softc*) ;
 int VXLAN_WUNLOCK (struct vxlan_softc*) ;
 scalar_t__ vxlan_check_ftable_timeout (int ) ;

__attribute__((used)) static int
vxlan_ctrl_set_ftable_timeout(struct vxlan_softc *sc, void *arg)
{
 struct ifvxlancmd *cmd;
 int error;

 cmd = arg;

 VXLAN_WLOCK(sc);
 if (vxlan_check_ftable_timeout(cmd->vxlcmd_ftable_timeout) == 0) {
  sc->vxl_ftable_timeout = cmd->vxlcmd_ftable_timeout;
  error = 0;
 } else
  error = EINVAL;
 VXLAN_WUNLOCK(sc);

 return (error);
}
