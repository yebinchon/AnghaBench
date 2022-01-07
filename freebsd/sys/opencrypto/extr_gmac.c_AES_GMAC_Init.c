
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aes_gmac_ctx {int dummy; } ;


 int bzero (struct aes_gmac_ctx*,int) ;

void
AES_GMAC_Init(struct aes_gmac_ctx *agc)
{

 bzero(agc, sizeof *agc);
}
