
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct aes_xts_ctx {int dummy; } ;
typedef scalar_t__ caddr_t ;


 int aes_xts_crypt (struct aes_xts_ctx*,int *,int ) ;

__attribute__((used)) static void
aes_xts_decrypt(caddr_t key, u_int8_t *data)
{
 aes_xts_crypt((struct aes_xts_ctx *)key, data, 0);
}
