
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixl_vsi {int stat_offsets_loaded; int eth_stats_offsets; int eth_stats; } ;
struct i40e_eth_stats {int dummy; } ;


 int bzero (int *,int) ;

void
ixl_vsi_reset_stats(struct ixl_vsi *vsi)
{
 bzero(&vsi->eth_stats, sizeof(struct i40e_eth_stats));
 bzero(&vsi->eth_stats_offsets, sizeof(struct i40e_eth_stats));
 vsi->stat_offsets_loaded = 0;
}
