
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int u_char ;
struct TYPE_3__ {int count; int const* buffer; int state; } ;
typedef TYPE_1__ RMD160_CTX ;


 int RMD160Transform (int ,int const*) ;
 int memcpy (int const*,int const*,int) ;

void
RMD160Update(RMD160_CTX *ctx, const u_char *input, u_int32_t len)
{
 u_int32_t have, off, need;

 have = (ctx->count/8) % 64;
 need = 64 - have;
 ctx->count += 8 * len;
 off = 0;

 if (len >= need) {
  if (have) {
   memcpy(ctx->buffer + have, input, need);
   RMD160Transform(ctx->state, ctx->buffer);
   off = need;
   have = 0;
  }

  while (off + 64 <= len) {
   RMD160Transform(ctx->state, input+off);
   off += 64;
  }
 }
 if (off < len)
  memcpy(ctx->buffer + have, input+off, len-off);
}
