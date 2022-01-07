
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* H; scalar_t__ size; } ;
typedef TYPE_1__ blk_SHA_CTX ;



void blk_SHA1_Init(blk_SHA_CTX *ctx)
{
 ctx->size = 0;


 ctx->H[0] = 0x67452301;
 ctx->H[1] = 0xefcdab89;
 ctx->H[2] = 0x98badcfe;
 ctx->H[3] = 0x10325476;
 ctx->H[4] = 0xc3d2e1f0;
}
