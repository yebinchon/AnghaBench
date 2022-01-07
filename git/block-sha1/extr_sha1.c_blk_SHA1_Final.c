
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int size; int * H; } ;
typedef TYPE_1__ blk_SHA_CTX ;


 int blk_SHA1_Update (TYPE_1__*,...) ;
 unsigned int htonl (int ) ;
 int put_be32 (unsigned char*,int ) ;

void blk_SHA1_Final(unsigned char hashout[20], blk_SHA_CTX *ctx)
{
 static const unsigned char pad[64] = { 0x80 };
 unsigned int padlen[2];
 int i;


 padlen[0] = htonl((uint32_t)(ctx->size >> 29));
 padlen[1] = htonl((uint32_t)(ctx->size << 3));

 i = ctx->size & 63;
 blk_SHA1_Update(ctx, pad, 1 + (63 & (55 - i)));
 blk_SHA1_Update(ctx, padlen, 8);


 for (i = 0; i < 5; i++)
  put_be32(hashout + i * 4, ctx->H[i]);
}
