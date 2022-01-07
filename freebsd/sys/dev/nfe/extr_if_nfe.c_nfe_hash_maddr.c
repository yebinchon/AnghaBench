
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
struct sockaddr_dl {int dummy; } ;
struct nfe_hash_maddr_ctx {int * mask; int * addr; } ;


 int ETHER_ADDR_LEN ;
 int * LLADDR (struct sockaddr_dl*) ;

__attribute__((used)) static u_int
nfe_hash_maddr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 struct nfe_hash_maddr_ctx *ctx = arg;
 uint8_t *addrp, mcaddr;
 int j;

 addrp = LLADDR(sdl);
 for (j = 0; j < ETHER_ADDR_LEN; j++) {
  mcaddr = addrp[j];
  ctx->addr[j] &= mcaddr;
  ctx->mask[j] &= ~mcaddr;
 }

 return (1);
}
