
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {int * state; } ;
struct TYPE_11__ {int * state; } ;
struct TYPE_10__ {int * state; } ;
struct TYPE_9__ {int * state; } ;
struct TYPE_7__ {int * b32; } ;
struct TYPE_8__ {TYPE_1__ h; } ;
union authctx {TYPE_6__ sha512ctx; TYPE_5__ sha384ctx; TYPE_4__ sha256ctx; TYPE_3__ sha224ctx; TYPE_2__ sha1ctx; } ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int u_int ;
 int SHA1_HASH_LEN ;
 int SHA2_256_HASH_LEN ;
 int SHA2_512_HASH_LEN ;
 int htobe32 (int ) ;
 int htobe64 (int ) ;

void
t4_copy_partial_hash(int alg, union authctx *auth_ctx, void *dst)
{
 uint32_t *u32;
 uint64_t *u64;
 u_int i;

 u32 = (uint32_t *)dst;
 u64 = (uint64_t *)dst;
 switch (alg) {
 case 137:
 case 136:
  for (i = 0; i < SHA1_HASH_LEN / 4; i++)
   u32[i] = htobe32(auth_ctx->sha1ctx.h.b32[i]);
  break;
 case 135:
 case 134:
  for (i = 0; i < SHA2_256_HASH_LEN / 4; i++)
   u32[i] = htobe32(auth_ctx->sha224ctx.state[i]);
  break;
 case 133:
 case 132:
  for (i = 0; i < SHA2_256_HASH_LEN / 4; i++)
   u32[i] = htobe32(auth_ctx->sha256ctx.state[i]);
  break;
 case 131:
 case 130:
  for (i = 0; i < SHA2_512_HASH_LEN / 8; i++)
   u64[i] = htobe64(auth_ctx->sha384ctx.state[i]);
  break;
 case 129:
 case 128:
  for (i = 0; i < SHA2_512_HASH_LEN / 8; i++)
   u64[i] = htobe64(auth_ctx->sha512ctx.state[i]);
  break;
 }
}
