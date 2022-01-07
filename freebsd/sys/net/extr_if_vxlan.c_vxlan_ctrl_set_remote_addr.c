
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union vxlan_sockaddr {int sa; } ;
struct vxlan_softc {int vxl_dst_addr; } ;
struct ifvxlancmd {union vxlan_sockaddr vxlcmd_sa; } ;


 int EBUSY ;
 int EINVAL ;
 int VXLAN_SOCKADDR_IS_IPV46 (union vxlan_sockaddr*) ;
 scalar_t__ VXLAN_SOCKADDR_IS_IPV6 (union vxlan_sockaddr*) ;
 int VXLAN_WLOCK (struct vxlan_softc*) ;
 int VXLAN_WUNLOCK (struct vxlan_softc*) ;
 scalar_t__ vxlan_can_change_config (struct vxlan_softc*) ;
 int vxlan_sockaddr_in6_embedscope (union vxlan_sockaddr*) ;
 int vxlan_sockaddr_in_copy (int *,int *) ;

__attribute__((used)) static int
vxlan_ctrl_set_remote_addr(struct vxlan_softc *sc, void *arg)
{
 struct ifvxlancmd *cmd;
 union vxlan_sockaddr *vxlsa;
 int error;

 cmd = arg;
 vxlsa = &cmd->vxlcmd_sa;

 if (!VXLAN_SOCKADDR_IS_IPV46(vxlsa))
  return (EINVAL);
 if (VXLAN_SOCKADDR_IS_IPV6(vxlsa)) {
  error = vxlan_sockaddr_in6_embedscope(vxlsa);
  if (error)
   return (error);
 }

 VXLAN_WLOCK(sc);
 if (vxlan_can_change_config(sc)) {
  vxlan_sockaddr_in_copy(&sc->vxl_dst_addr, &vxlsa->sa);
  error = 0;
 } else
  error = EBUSY;
 VXLAN_WUNLOCK(sc);

 return (error);
}
