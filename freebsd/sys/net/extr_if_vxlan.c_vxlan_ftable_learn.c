
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sin_port; } ;
union vxlan_sockaddr {TYPE_1__ in4; } ;
typedef int uint8_t ;
struct TYPE_5__ {int sin_port; } ;
struct TYPE_6__ {TYPE_2__ in4; } ;
struct vxlan_softc {TYPE_3__ vxl_dst_addr; } ;
struct sockaddr {int dummy; } ;
struct rm_priotracker {int dummy; } ;


 int VXLAN_RLOCK (struct vxlan_softc*,struct rm_priotracker*) ;
 scalar_t__ VXLAN_SOCKADDR_IS_IPV6 (union vxlan_sockaddr*) ;
 int VXLAN_UNLOCK (struct vxlan_softc*,struct rm_priotracker*) ;
 int vxlan_ftable_update_locked (struct vxlan_softc*,union vxlan_sockaddr*,int const*,struct rm_priotracker*) ;
 int vxlan_sockaddr_copy (union vxlan_sockaddr*,struct sockaddr const*) ;
 int vxlan_sockaddr_in6_embedscope (union vxlan_sockaddr*) ;

__attribute__((used)) static int
vxlan_ftable_learn(struct vxlan_softc *sc, const struct sockaddr *sa,
    const uint8_t *mac)
{
 struct rm_priotracker tracker;
 union vxlan_sockaddr vxlsa;
 int error;





 vxlan_sockaddr_copy(&vxlsa, sa);
 vxlsa.in4.sin_port = sc->vxl_dst_addr.in4.sin_port;

 if (VXLAN_SOCKADDR_IS_IPV6(&vxlsa)) {
  error = vxlan_sockaddr_in6_embedscope(&vxlsa);
  if (error)
   return (error);
 }

 VXLAN_RLOCK(sc, &tracker);
 error = vxlan_ftable_update_locked(sc, &vxlsa, mac, &tracker);
 VXLAN_UNLOCK(sc, &tracker);

 return (error);
}
