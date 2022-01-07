
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int NAE_TX_CONFIG ;
 int NAE_TX_IORCRDT_INIT ;
 int TXINITIORCR (int) ;
 int nlm_read_nae_reg (int ,int ) ;
 int nlm_write_nae_reg (int ,int ,int) ;

__attribute__((used)) static void
nlm_nae_set_ior_credit(uint64_t nae_base, uint32_t ifmask, uint32_t valmask)
{
 uint32_t tx_config, tx_ior_credit;

 tx_ior_credit = nlm_read_nae_reg(nae_base, NAE_TX_IORCRDT_INIT);
 tx_ior_credit &= ~ifmask;
 tx_ior_credit |= valmask;
 nlm_write_nae_reg(nae_base, NAE_TX_IORCRDT_INIT, tx_ior_credit);

 tx_config = nlm_read_nae_reg(nae_base, NAE_TX_CONFIG);

 nlm_write_nae_reg(nae_base, NAE_TX_CONFIG,
     tx_config | (TXINITIORCR(ifmask)));
 nlm_write_nae_reg(nae_base, NAE_TX_CONFIG,
     tx_config & ~(TXINITIORCR(ifmask)));
}
