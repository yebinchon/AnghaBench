
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef unsigned long long uint32_t ;


 int SYS_CORE_DFS_DIV_VALUE ;
 int SYS_POWER_ON_RESET_CFG ;
 int nlm_get_sys_regbase (int) ;
 int nlm_is_xlp8xx_ax () ;
 unsigned int nlm_read_sys_reg (int ,int ) ;

uint32_t
xlp_get_cpu_frequency(int node, int core)
{
 uint64_t sysbase = nlm_get_sys_regbase(node);
 unsigned int pll_divf, pll_divr, dfs_div, ext_div;
 unsigned int rstval, dfsval;

 rstval = nlm_read_sys_reg(sysbase, SYS_POWER_ON_RESET_CFG);
 dfsval = nlm_read_sys_reg(sysbase, SYS_CORE_DFS_DIV_VALUE);
 pll_divf = ((rstval >> 10) & 0x7f) + 1;
 pll_divr = ((rstval >> 8) & 0x3) + 1;
 if (!nlm_is_xlp8xx_ax())
  ext_div = ((rstval >> 30) & 0x3) + 1;
 else
  ext_div = 1;
 dfs_div = ((dfsval >> (core << 2)) & 0xf) + 1;

 return ((800000000ULL * pll_divf)/(3 * pll_divr * ext_div * dfs_div));
}
