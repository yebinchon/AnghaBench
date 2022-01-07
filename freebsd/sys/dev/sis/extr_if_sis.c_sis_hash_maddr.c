
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct sockaddr_dl {int dummy; } ;
struct sis_hash_maddr_ctx {int* hashes; int sc; } ;


 int LLADDR (struct sockaddr_dl*) ;
 int sis_mchash (int ,int ) ;

__attribute__((used)) static u_int
sis_hash_maddr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 struct sis_hash_maddr_ctx *ctx = arg;
 uint32_t h;

 h = sis_mchash(ctx->sc, LLADDR(sdl));
 ctx->hashes[h >> 4] |= 1 << (h & 0xf);

 return (1);
}
