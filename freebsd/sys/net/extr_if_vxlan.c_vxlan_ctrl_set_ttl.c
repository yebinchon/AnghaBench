
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vxlan_softc {int vxl_ttl; TYPE_1__* vxl_im6o; TYPE_2__* vxl_im4o; } ;
struct ifvxlancmd {int vxlcmd_ttl; } ;
struct TYPE_4__ {int imo_multicast_ttl; } ;
struct TYPE_3__ {int im6o_multicast_hlim; } ;


 int EINVAL ;
 int VXLAN_WLOCK (struct vxlan_softc*) ;
 int VXLAN_WUNLOCK (struct vxlan_softc*) ;
 scalar_t__ vxlan_check_ttl (int ) ;

__attribute__((used)) static int
vxlan_ctrl_set_ttl(struct vxlan_softc *sc, void *arg)
{
 struct ifvxlancmd *cmd;
 int error;

 cmd = arg;

 VXLAN_WLOCK(sc);
 if (vxlan_check_ttl(cmd->vxlcmd_ttl) == 0) {
  sc->vxl_ttl = cmd->vxlcmd_ttl;
  if (sc->vxl_im4o != ((void*)0))
   sc->vxl_im4o->imo_multicast_ttl = sc->vxl_ttl;
  if (sc->vxl_im6o != ((void*)0))
   sc->vxl_im6o->im6o_multicast_hlim = sc->vxl_ttl;
  error = 0;
 } else
  error = EINVAL;
 VXLAN_WUNLOCK(sc);

 return (error);
}
