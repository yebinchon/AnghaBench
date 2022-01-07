
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aes_cbc_mac_ctx {int dummy; } ;


 int bzero (struct aes_cbc_mac_ctx*,int) ;

void
AES_CBC_MAC_Init(struct aes_cbc_mac_ctx *ctx)
{
 bzero(ctx, sizeof(*ctx));
}
