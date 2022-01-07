
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sockaddr_dl {int dummy; } ;
struct dc_hash_maddr_admtek_le_ctx {int* hashes; int sc; } ;


 int LLADDR (struct sockaddr_dl*) ;
 int dc_mchash_le (int ,int ) ;

__attribute__((used)) static u_int
dc_hash_maddr_admtek_le(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 struct dc_hash_maddr_admtek_le_ctx *ctx = arg;
 int h = 0;

 h = dc_mchash_le(ctx->sc, LLADDR(sdl));
 if (h < 32)
  ctx->hashes[0] |= (1 << h);
 else
  ctx->hashes[1] |= (1 << (h - 32));

 return (1);
}
