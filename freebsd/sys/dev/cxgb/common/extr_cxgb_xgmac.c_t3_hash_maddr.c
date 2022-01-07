
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct t3_mcaddr_ctx {int hash_lo; int hash_hi; TYPE_1__* mac; } ;
struct sockaddr_dl {int dummy; } ;
struct TYPE_2__ {scalar_t__ nucast; } ;


 scalar_t__ EXACT_ADDR_FILTERS ;
 int LLADDR (struct sockaddr_dl*) ;
 int hash_hw_addr (int ) ;
 int set_addr_filter (TYPE_1__*,scalar_t__,int ) ;

__attribute__((used)) static u_int
t3_hash_maddr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 struct t3_mcaddr_ctx *ctx = arg;
 int hash;

 if (ctx->mac->nucast + cnt < EXACT_ADDR_FILTERS)
  set_addr_filter(ctx->mac, ctx->mac->nucast + cnt, LLADDR(sdl));
 else {
  hash = hash_hw_addr(LLADDR(sdl));
  if (hash < 32)
   ctx->hash_lo |= (1 << hash);
  else
   ctx->hash_hi |= (1 << (hash - 32));
 }
 return (1);
}
