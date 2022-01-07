
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct vge_softc {scalar_t__ vge_camidx; } ;
struct sockaddr_dl {int dummy; } ;


 int LLADDR (struct sockaddr_dl*) ;
 scalar_t__ VGE_CAM_MAXADDRS ;
 int vge_cam_set (struct vge_softc*,int ) ;

__attribute__((used)) static u_int
vge_set_maddr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 struct vge_softc *sc = arg;

        if (sc->vge_camidx == VGE_CAM_MAXADDRS)
  return (0);

 (void )vge_cam_set(sc, LLADDR(sdl));

 return (1);
}
