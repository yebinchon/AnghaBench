
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef scalar_t__ u_int ;
struct sockaddr_dl {int dummy; } ;
struct sk_add_maddr_genesis_ctx {int* hashes; int mode; int sc_if; } ;


 scalar_t__ LLADDR (struct sockaddr_dl*) ;
 int XM_MODE_RX_USE_HASH ;
 int XM_MODE_RX_USE_PERFECT ;
 scalar_t__ XM_RXFILT_MAX ;
 int sk_setfilt (int ,int *,scalar_t__) ;
 int sk_xmchash (int const*) ;

__attribute__((used)) static u_int
sk_add_maddr_genesis(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 struct sk_add_maddr_genesis_ctx *ctx = arg;
 int h;





 if (cnt + 1 < XM_RXFILT_MAX) {
  sk_setfilt(ctx->sc_if, (uint16_t *)LLADDR(sdl), cnt + 1);
  ctx->mode |= XM_MODE_RX_USE_PERFECT;
  return (1);
 }
 h = sk_xmchash((const uint8_t *)LLADDR(sdl));
 if (h < 32)
  ctx->hashes[0] |= (1 << h);
 else
  ctx->hashes[1] |= (1 << (h - 32));
 ctx->mode |= XM_MODE_RX_USE_HASH;

 return (1);
}
