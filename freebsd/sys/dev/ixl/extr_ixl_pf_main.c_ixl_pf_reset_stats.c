
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixl_pf {int stat_offsets_loaded; int stats_offsets; int stats; } ;
struct i40e_hw_port_stats {int dummy; } ;


 int bzero (int *,int) ;

void
ixl_pf_reset_stats(struct ixl_pf *pf)
{
 bzero(&pf->stats, sizeof(struct i40e_hw_port_stats));
 bzero(&pf->stats_offsets, sizeof(struct i40e_hw_port_stats));
 pf->stat_offsets_loaded = 0;
}
