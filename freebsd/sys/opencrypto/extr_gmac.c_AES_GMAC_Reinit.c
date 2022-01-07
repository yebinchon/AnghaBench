
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct aes_gmac_ctx {int counter; } ;


 int KASSERT (int,char*) ;
 int bcopy (int const*,int ,int) ;

void
AES_GMAC_Reinit(struct aes_gmac_ctx *agc, const uint8_t *iv, uint16_t ivlen)
{

 KASSERT(ivlen <= sizeof agc->counter, ("passed ivlen too large!"));
 bcopy(iv, agc->counter, ivlen);
}
