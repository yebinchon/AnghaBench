
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int u_int ;
struct sockaddr_dl {int dummy; } ;
struct dwc_hash_maddr_ctx {int* hash; TYPE_1__* sc; } ;
struct TYPE_2__ {scalar_t__ mactype; } ;


 scalar_t__ DWC_GMAC_ALT_DESC ;
 int ETHER_ADDR_LEN ;
 int LLADDR (struct sockaddr_dl*) ;
 int bitreverse (int) ;
 int ether_crc32_le (int ,int ) ;

__attribute__((used)) static u_int
dwc_hash_maddr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 struct dwc_hash_maddr_ctx *ctx = arg;
 uint32_t crc, hashbit, hashreg;
 uint8_t val;

 crc = ether_crc32_le(LLADDR(sdl), ETHER_ADDR_LEN);

 val = bitreverse(~crc & 0xff);
 if (ctx->sc->mactype == DWC_GMAC_ALT_DESC)
  val >>= 2;
 hashreg = (val >> 5);
 hashbit = (val & 31);
 ctx->hash[hashreg] |= (1 << hashbit);

 return (1);
}
