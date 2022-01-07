
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int Poly1305_Update (void*,int const*,int ) ;

__attribute__((used)) static int
xform_Poly1305_Update(void *ctx, const uint8_t *data, uint16_t len)
{
 return (Poly1305_Update(ctx, data, len));
}
