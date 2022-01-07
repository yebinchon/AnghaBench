
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sockaddr_dl {int dummy; } ;
struct bfe_softc {int dummy; } ;


 int LLADDR (struct sockaddr_dl*) ;
 int bfe_cam_write (struct bfe_softc*,int ,int) ;

__attribute__((used)) static u_int
bfe_write_maddr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 struct bfe_softc *sc = arg;

 bfe_cam_write(sc, LLADDR(sdl), cnt + 1);

 return (1);
}
