
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int u_int ;
struct vte_maddr_ctx {size_t nperf; int** rxfilt_perf; int* mchash; } ;
struct sockaddr_dl {int dummy; } ;


 int ETHER_ADDR_LEN ;
 int* LLADDR (struct sockaddr_dl*) ;
 size_t VTE_RXFILT_PERFECT_CNT ;
 int ether_crc32_be (int*,int ) ;

__attribute__((used)) static u_int
vte_hash_maddr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 struct vte_maddr_ctx *ctx = arg;
 uint8_t *eaddr;
 uint32_t crc;





 if (ctx->nperf < VTE_RXFILT_PERFECT_CNT) {
  eaddr = LLADDR(sdl);
  ctx->rxfilt_perf[ctx->nperf][0] = eaddr[1] << 8 | eaddr[0];
  ctx->rxfilt_perf[ctx->nperf][1] = eaddr[3] << 8 | eaddr[2];
  ctx->rxfilt_perf[ctx->nperf][2] = eaddr[5] << 8 | eaddr[4];
  ctx->nperf++;

  return (1);
 }
 crc = ether_crc32_be(LLADDR(sdl), ETHER_ADDR_LEN);
 ctx->mchash[crc >> 30] |= 1 << ((crc >> 26) & 0x0F);

 return (1);
}
