
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int Poly1305_Final (int *,void*) ;

__attribute__((used)) static void
xform_Poly1305_Final(uint8_t *digest, void *ctx)
{
 Poly1305_Final(digest, ctx);
}
