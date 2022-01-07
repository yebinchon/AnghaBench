
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int Poly1305_Setkey (void*,int const*,int ) ;

__attribute__((used)) static void
xform_Poly1305_Setkey(void *ctx, const uint8_t *key, uint16_t klen)
{
 Poly1305_Setkey(ctx, key, klen);
}
