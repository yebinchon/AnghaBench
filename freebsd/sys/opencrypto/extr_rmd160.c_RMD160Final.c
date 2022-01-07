
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int u_char ;
struct TYPE_5__ {int count; int * state; } ;
typedef TYPE_1__ RMD160_CTX ;


 int * PADDING ;
 int PUT_32BIT_LE (int *,int ) ;
 int PUT_64BIT_LE (int *,int) ;
 int RMD160Update (TYPE_1__*,int *,int) ;
 int memset (TYPE_1__*,int ,int) ;

void
RMD160Final(u_char digest[20], RMD160_CTX *ctx)
{
 int i;
 u_char size[8];
 u_int32_t padlen;

 PUT_64BIT_LE(size, ctx->count);





 padlen = 64 - ((ctx->count/8) % 64);
 if (padlen < 1 + 8)
  padlen += 64;
 RMD160Update(ctx, PADDING, padlen - 8);
 RMD160Update(ctx, size, 8);

 if (digest != ((void*)0))
  for (i = 0; i < 5; i++)
   PUT_32BIT_LE(digest + i*4, ctx->state[i]);

 memset(ctx, 0, sizeof (*ctx));
}
