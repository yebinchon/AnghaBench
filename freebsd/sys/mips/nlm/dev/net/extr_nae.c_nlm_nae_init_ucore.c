
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int u_int ;


 int NAE_UCORE_IFACEMASK_CFG ;
 int nlm_write_nae_reg (int ,int ,int ) ;
 int ucore_spray_config (int,int ,int) ;

void
nlm_nae_init_ucore(uint64_t nae_base, int if_num, u_int ucore_mask)
{
 uint32_t ucfg;

 ucfg = ucore_spray_config(if_num, ucore_mask, 1);
 nlm_write_nae_reg(nae_base, NAE_UCORE_IFACEMASK_CFG, ucfg);
}
