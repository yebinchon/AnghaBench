
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct vr_hash_maddr_cam_ctx {scalar_t__ error; int mask; int sc; } ;
struct sockaddr_dl {int dummy; } ;


 int LLADDR (struct sockaddr_dl*) ;
 int VR_MCAST_CAM ;
 scalar_t__ vr_cam_data (int ,int ,int,int ) ;

__attribute__((used)) static u_int
vr_hash_maddr_cam(void *arg, struct sockaddr_dl *sdl, u_int mcnt)
{
 struct vr_hash_maddr_cam_ctx *ctx = arg;

 if (ctx->error != 0)
  return (0);
 ctx->error = vr_cam_data(ctx->sc, VR_MCAST_CAM, mcnt, LLADDR(sdl));
 if (ctx->error != 0) {
  ctx->mask = 0;
  return (0);
 }
 ctx->mask |= 1 << mcnt;

 return (1);
}
